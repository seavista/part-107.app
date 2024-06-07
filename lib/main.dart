import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:quiz_app/config/routes/app_routes.dart';
import 'package:quiz_app/screens/login/auth_gate.dart';
import 'package:quiz_app/screens/welcome/welcome_screen.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

void main() {
  setUp();
}

void setUp() async {
  FirebaseOptions firebaseConfig = const FirebaseOptions(
      apiKey: "AIzaSyCJBxGSlJDTufhZVZy7ozPEe-D0nVYBhUg",
      authDomain: "part-107-82ca6.firebaseapp.com",
      projectId: "part-107-82ca6",
      storageBucket: "part-107-82ca6.appspot.com",
      messagingSenderId: "274518596440",
      appId: "1:274518596440:web:2d201118052fd1dd1a632d",
      measurementId: "G-09FCW35B8M");

  if (!kIsWeb) {
    await Firebase.initializeApp();
  } else {
    await Firebase.initializeApp(options: firebaseConfig);
  }

  await FirebaseAnalytics.instance.logAdImpression();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Part 107 Free Test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey)
              .copyWith(background: Colors.blueGrey)),
      home: AuthGate(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
