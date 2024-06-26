import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quiz_app/config/routes/app_routes.dart';
import 'package:quiz_app/screens/login/entry_screen.dart';
import 'package:quiz_app/screens/login/login_screen.dart';
import 'package:quiz_app/screens/quiz/animations/drone_animation.dart';
import 'package:quiz_app/screens/welcome/welcome_screen.dart';

import '../../controllers/question_controller.dart';

class AuthGate extends StatelessWidget {
  AuthGate();

  @override
  final ctrl = Get.put(QuestionController());

  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Container();
        }

        if (!snapshot.hasData || snapshot.data!.isAnonymous) {
          return EntryScreen();
        } else {
          final user = snapshot.data!;
          if (!user.isAnonymous) {
            return FutureBuilder<QuerySnapshot>(
              future: FirebaseFirestore.instance
                  .collection('Orders')
                  .where('firebaseUserEmail', isEqualTo: user.email)
                  .get(),
              builder: (context, querySnapshot) {
                if (querySnapshot.connectionState == ConnectionState.waiting) {
                  return DroneTakeoffAnimation();
                } else if (querySnapshot.hasError) {
                  return Center(child: Text('Error: ${querySnapshot.error}'));
                } else if (querySnapshot.hasData) {
                  final isPaidUser = querySnapshot.data!.docs.isNotEmpty;
                  ctrl.updateIsPaid(isPaidUser);
                  if (isPaidUser) {
                    // Access the orderData.receipt_url field from the first document
                    var receiptUrl = querySnapshot.data!.docs.first
                        .get("orderData.receipt_url");

                    // Update the orderId or any other required field
                    ctrl.updateOrderId(receiptUrl);
                  }

                  return WelcomeScreen();
                } else {
                  return LoginScreen(); // Default fallback
                }
              },
            );
          }
        }
        return LoginScreen();
      },
    );
  }
}
