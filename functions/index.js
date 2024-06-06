const functions = require("firebase-functions");
const stripe = require('stripe')('sk_test_51PKLaQ09YdZFPzTijC4jpxct1CQUNJzfpVoIom4idR89d8qGG49Dc5at4wI1lQCdLHJDsPtvyGJicu1Zhpn8x8CL00Ss2vaa8P');
const endpointSecret = 'whsec_NJJy11bLUESXxcXoiMz4qY848w7rHmv9';
const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const admin = require('firebase-admin');

const app = express();
app.use(cors({ origin: true }));

// Initialize the Firebase Admin SDK
const serviceAccount = require('./part-107-82ca6-firebase-adminsdk-u55xq-b8935fa94d.json');


admin.initializeApp({
  credential: admin.credential.cert(serviceAccount)
});

//const fulfillOrder =  (request, session) => {
const fulfillOrder = async (event, session) => {
  console.log("Fulfilling order", event.data.object);

  const db = admin.firestore();
  
  // const user_id = request.query.user_id; // Access the query string value
  // const userEmail = session.billing_details.email;

  const userId = event.query.user_id; // Access the custom parameter
  const userEmail = session.billing_details.email;


  db.collection('orders').doc(session.id).set({
    userId,
    userEmail,
    orderData: session,
  }).then(() => {
    console.log(`Order fulfilled and saved to Firestore`);
  }).catch((error) => {
    console.error(`Error saving order to Firestore: ${error}`);
  });
};

const createOrder = (session) => {
  console.log("Creating order");

};

const emailCustomerAboutFailedPayment = (session) => {
  console.log("Emailing customer", session);
};


app.post('/', async (request, response) => {

  console.log("Webhook POST request received");


    //  // Verify the ID token sent by the client
    // try {
    //     const authHeader = request.headers['authorization'];
    //     console.log(authHeader);
    // } catch (error) {
    //   console.log('No authHeader value');
    // }
     // const token = authHeader.split('Bearer ')[1];
    //  const decodedToken = await admin.auth().verifyIdToken(token);
   
    //  // Get the user's UID from the decoded token
    //  const uid = decodedToken.uid;

     
   
    //  // Retrieve the user's information
    //  const userRecord = await admin.auth().getUser(uid);
    //  console.log(userRecord);


  const payload = request.body;


  const sig = request.headers['stripe-signature'];
 // console.log("Payload:", payload);
  //console.log("Signature:", sig);
  let event;
if(endpointSecret){

    try {
    event = stripe.webhooks.constructEvent(request.rawBody, sig, endpointSecret);
    console.log("Webhook verified successfully");
  } catch (err) {
    console.error("Webhook verification failed:", err.message);
    return response.status(400).send("Webhook Error: " + err.message);
  }
}


  switch (event.type) {
    case 'charge.succeeded': {

      console.log('charge.succeeded Event reached');
    
      const session = event.data.object;
      createOrder(session);
      fulfillOrder(event, session); //pass the logged in userid to Stripe
      
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
  limit: '5mb',
  verify: (req, res, buf) => {
    req.rawBody = buf.toString();
  }
}));


exports.webhook = functions.https.onRequest(app);


// Function to create a payment link
exports.createPaymentLink = functions.https.onRequest(async (req, res) => {
  //const { userEmail } = req.body;
  const { userEmail } = req.query.user_id;


  try {
    const protocol = req.protocol;
    const host = req.get('host');
    const baseUrl = `${protocol}://${host}`;

    const session = await stripe.checkout.sessions.create({
      payment_method_types: ['card'],
      line_items: [
        {
          price_data: {
            currency: 'usd',
            product_data: {
              name: 'Part-107.app Full Access Pass',
              images: [`https://part-107.app/icons/logo.png`] // Logo URL
            },
            unit_amount: 1900,
          },
          quantity: 1,
        },
      ],
      mode: 'payment',
      success_url: `${baseUrl}`,
      cancel_url: `${baseUrl}/cancel`,
      metadata: {
        firebaseUserEmail: userEmail,
      },
    });

    res.json({ url: session.url });
    

    res.status(200).end(); 
    return ('Any response body', 200, {'Access-Control-Allow-Origin': '*'})

  } catch (error) {
    res.status(500).send(error);
  }
});


