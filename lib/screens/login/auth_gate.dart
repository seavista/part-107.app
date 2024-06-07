import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:quiz_app/config/routes/app_routes.dart';
import 'package:quiz_app/screens/login/entry_screen.dart';
import 'package:quiz_app/screens/login/login_screen.dart';
import 'package:quiz_app/screens/welcome/welcome_screen.dart';

class AuthGate extends StatelessWidget {
  const AuthGate();

  @override
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
          if (!snapshot.data!.isAnonymous) {
            return WelcomeScreen();
          }
        }
        return LoginScreen();
      },
    );
  }
}
