const functions = require("firebase-functions");

// // Create and deploy your first functions
// // https://firebase.google.com/docs/functions/get-started
//
// exports.helloWorld = functions.https.onRequest((request, response) => {
//   functions.logger.info("Hello logs!", {structuredData: true});
//   response.send("Hello from Firebase!");
// });
//


const stripe = require('stripe')('sk_test_51PKLaQ09YdZFPzTijC4jpxct1CQUNJzfpVoIom4idR89d8qGG49Dc5at4wI1lQCdLHJDsPtvyGJicu1Zhpn8x8CL00Ss2vaa8P');
const endpointSecret = 'whsec_NJJy11bLUESXxcXoiMz4qY848w7rHmv9';
const express = require('express');
const bodyParser = require('body-parser');

const app = express();

const fulfillOrder = (session) => {
  // TODO: fill me in
  console.log("Fulfilling order", session);
};

const createOrder = (session) => {
  // TODO: fill me in
  console.log("Creating order", session);
};

const emailCustomerAboutFailedPayment = (session) => {
  // TODO: fill me in
  console.log("Emailing customer", session);
};

app.post('/webhook', bodyParser.raw({ type: 'application/json' }), (request, response) => {
  const payload = request.body;
  const sig = request.headers['stripe-signature'];

  let event;

  try {
    event = stripe.webhooks.constructEvent(payload, sig, endpointSecret);
  } catch (err) {
    return response.status(400).send(`Webhook Error: ${err.message}`);
  }

  // Handle the checkout.session.completed event
  if (event.type === 'checkout.session.completed') {
    const session = event.data.object;

    // Fulfill the purchase...
    fulfillOrder(session);
  }

  switch (event.type) {
    case 'checkout.session.completed': {
      const session = event.data.object;
      // Save an order in your database, marked as 'awaiting payment'
      createOrder(session);

      // Check if the order is paid (for example, from a card payment)
      // A delayed notification payment will have an `unpaid` status, as
      // you're still waiting for funds to be transferred from the customer's
      // account.
      if (session.payment_status === 'paid') {
        fulfillOrder(session);
      }

      break;
    }

    case 'charge.succeeded':{
               const chargeSucceeded = event.data.object;
        // Then define and call a function to handle the event charge.succeeded
        const session = event.data.object;
        // Save an order in your database, marked as 'awaiting payment'
        createOrder(session);
            // Check if the order is paid (for example, from a card payment)
        // A delayed notification payment will have an `unpaid` status, as
        // you're still waiting for funds to be transferred from the customer's
        // account.
        if (session.payment_status === 'paid') {
            fulfillOrder(session);
        
          
        }
        break;
    }
  
    
        

    case 'checkout.session.async_payment_succeeded': {
      const session = event.data.object;

      // Fulfill the purchase...
      fulfillOrder(session);

      break;
    }

    case 'checkout.session.async_payment_failed': {
      const session = event.data.object;

      // Send an email to the customer asking them to retry their order
      emailCustomerAboutFailedPayment(session);

      break;
    }

    
  }

  response.status(200).end();
});

exports.webhook = functions.https.onRequest(app);

