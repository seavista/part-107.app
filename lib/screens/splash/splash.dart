import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_app/config/routes/app_routes.dart';

// Other imports...

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late Timer _timer;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 5000),
    );

    // Delay animation start
    Future.delayed(const Duration(milliseconds: 100), () {
      _animationController.forward();
      // Start the delay timer
      _timer = Timer(const Duration(milliseconds: 5000), _goNext);
    });
  }

  void _goNext() {
    if (FirebaseAuth.instance.currentUser == null) {
      Navigator.pushReplacementNamed(context, Routes.appWelcome);
    }
  }

  @override
  void dispose() {
    _timer.cancel();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
      body: Stack(
        children: [
          Center(
            child: FadeTransition(
              opacity: _animationController,
              child: Image.asset(
                'assets/icons/logo.png',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
