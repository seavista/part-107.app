require('dotenv').config();

const functions = require("firebase-functions");
const stripe = require('stripe')('sk_test_51PKLaQ09YdZFPzTijC4jpxct1CQUNJzfpVoIom4idR89d8qGG49Dc5at4wI1lQCdLHJDsPtvyGJicu1Zhpn8x8CL00Ss2vaa8P');
const endpointSecret = 'whsec_NJJy11bLUESXxcXoiMz4qY848w7rHmv9';
const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const admin = require('firebase-admin');

const sgMail = require('@sendgrid/mail');
sgMail.setApiKey(process.env.MY_SENDGRID_API_KEY);

const axios = require('axios');


const app = express();
app.use(cors({ origin: true }));

// Initialize the Firebase Admin SDK
admin.initializeApp({
  credential: admin.credential.cert({
    projectId: process.env.MY_FIREBASE_PROJECT_ID,
    clientEmail: process.env.MY_FIREBASE_CLIENT_EMAIL,
    privateKey: process.env.MY_FIREBASE_PRIVATE_KEY.replace(/\\n/g, '\n')
  }),
  databaseURL: `https://${process.env.MY_FIREBASE_PROJECT_ID}.firebaseio.com`
});





const fulfillOrder = async (session) => {
  console.log("Fulfilling order",session);

  
  const userEmail = session.billing_details.email;

  const metaData = session.metadata;
  const firebaseUserEmail = session.metadata.firebaseUserEmail;
  console.log(firebaseUserEmail);
 
  const db = admin.firestore();
  await db.collection('Orders').doc(session.id).set({
    firebaseUserEmail,
    userEmail,
    orderData: session,
  }).then(() => {
    console.log(`Order fulfilled and saved to Firestore`);
  }).catch((error) => {
    console.error(`Error saving order to Firestore: ${error}`);
  });

    // Send email here
  try {

    const response = await axios.post(`https://us-central1-${process.env.MY_FIREBASE_PROJECT_ID}.cloudfunctions.net/sendEmail`, {
      to: userEmail,
      subject: 'Order Confirmation',
      text: `Your Part-107.app order with ID ${session.id} has been successfully fulfilled.`
    });

    if (response.status === 200) {
      console.log('Email sent successfully');
    } else {
      console.error('Failed to send email:', response.status, response.statusText);
    }
  } catch (error) {
    console.error('Error sending email:', error);
  }

};

const createOrder = (session) => {
  console.log("Creating order");

};

const emailCustomerAboutFailedPayment = (session) => {
  console.log("Emailing customer", session);
};


app.post('/', async (request, response) => {

  console.log("Webhook POST request received");

  const payload = request.body;
  const sig = request.headers['stripe-signature'];
  // console.log("Payload:", payload);
  //console.log("Signature:", sig);

  let event;

  if (endpointSecret) {
   try {
      event = stripe.webhooks.constructEvent(request.rawBody, sig, endpointSecret);
      console.log("Webhook verified successfully");
    } catch (err) {
      console.error("Webhook verification failed:", err.message);
      return response.status(400).send("Webhook Error: " + err.message);
    }
  }

  const session = event.data.object;


  switch (event.type) {
    case 'charge.succeeded': {

      console.log('charge.succeeded Event reached');


      createOrder(session);
      await fulfillOrder(session); //pass the logged in userid to Stripe

      break;
    }
    // Add other event types here
    default:
      console.log(`Unhandled event type ${event.type}`);

  }

  response.status(200).end();
});

//important for using rawBody above
app.use(express.json({
  limit: '10mb',
  verify: (req, res, buf) => {
    req.rawBody = buf.toString();
  }
}));


exports.webhook = functions.https.onRequest(app);

exports.ensureUserInFirestore = functions.https.onCall(async (data, context) => {
  if (!context.auth) {
    throw new functions.https.HttpsError('failed-precondition', 'The function must be called while authenticated.');
  }

  const uid = context.auth.uid;
  const userRef = admin.firestore().collection('Users').doc(uid);
  
  const userDoc = await userRef.get();
  if (!userDoc.exists) {
    const user = await admin.auth().getUser(uid);
    const userData = {
      uid: user.uid,
      email: user.email,
      displayName: user.displayName || null,
      photoURL: user.photoURL || null,
      createdAt: admin.firestore.FieldValue.serverTimestamp(),
    };
    
    await userRef.set(userData);

 

    return { message: `User ${uid} added to Firestore` };
  } else {
    return { message: `User ${uid} already exists in Firestore` };
  }
});

// Function to create a payment link
exports.createPaymentLink = functions.https.onRequest(async (req, res) => {

  res.set('Access-Control-Allow-Origin', '*');
  res.set('Access-Control-Allow-Methods', 'GET, POST');
  res.set('Access-Control-Allow-Headers', 'Content-Type');

  const userEmail = req.query.user_id;
  if (!userEmail || userEmail.trim() === '') {
    return res.status(400).send('User email is required');
  }

  // const host = req.query.host;
  // if (!host || host.trim() === '') {
  //   return res.status(400).send('Host is required');
  // }



  console.error("### userEmail:", userEmail);

  try {
    // const protocol = req.protocol;
    // const host = req.get('host');
    // const baseUrl = `${protocol}://${host}`;

    const session = await stripe.checkout.sessions.create({
      payment_method_types: ['card'],
      line_items: [
        {
          price_data: {
            currency: 'usd',
            product_data: {
              name: 'Part-107.app Full Access Pass',
              images: [`https://part-107.app/images/logo-dark.png`] // Logo URL
            },
            unit_amount: 995,
          },
          quantity: 1,

        },
      ],
      mode: 'payment',
      success_url: `https://part-107.app/?sessionId={CHECKOUT_SESSION_ID}`,
      cancel_url: `https://part-107.app`,
      payment_intent_data: {
        // PAYMENT metadata
        metadata: {
          firebaseUserEmail: userEmail
        
        },
      }


    });

    res.json({ url: session.url, sessionId: session.id });


    res.status(200).end();
    return ('Any response body', 200, { 'Access-Control-Allow-Origin': '*' })

  } catch (error) {
    res.status(500).send(error);
  }
});

// EMAIL



exports.sendEmail = functions.https.onRequest((req, res) => {
  const { to, subject, text } = req.body;

  const msg = {
    to: to, // Change to your recipient
    from: '"Part-107.app" <jason@seavista.co>', // Change to your verified sender
    subject: subject,
    text: text,
    html: `<strong>${text}</strong>`,
  }
  sgMail
    .send(msg)
    .then(() => {
      console.log('Email sent');
      res.status(200).end();
    })
    .catch((error) => {
      console.error(error);
      res.status(500).send(error);
    })


});






