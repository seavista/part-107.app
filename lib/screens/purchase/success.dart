import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:quiz_app/config/routes/app_routes.dart';
import 'package:quiz_app/screens/quiz/animations/confetti_animation.dart';
import 'package:quiz_app/screens/quiz/animations/drone_animation.dart';
import 'dart:html' as html;

import 'package:quiz_app/screens/welcome/welcome_screen.dart';

class SuccessScreen extends StatefulWidget {
  final String? sessionId;

  SuccessScreen({Key? key, this.sessionId}) : super(key: key);

  @override
  _SuccessScreenState createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  String sessionId = '';

  @override
  void initState() {
    super.initState();
    final uri = Uri.dataFromString(html.window.location.href);
    sessionId = widget.sessionId ?? 'Unknown';
    // uri.queryParameters['sessionId'] ?? 'Unknown';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        leading: Container(),
        title: Text(
          'PRO Access Unlocked',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Stack(
        children: <Widget>[
          AwardWithConfettiAnimation(),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                Text(
                  'Clear For Take Off!',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Your session ID is: $sessionId',
                  style: TextStyle(fontSize: 10),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(Routes.initial);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Return to Homepage',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
