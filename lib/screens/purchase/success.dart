import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
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
      appBar: AppBar(
        title: Text('Full Access Unlocked'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Congratulations!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              'Your session ID is: $sessionId',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.of(context).pushReplacement(
            //       MaterialPageRoute(
            //         builder: (context) => WelcomeScreen(),
            //       ),
            //     );
            //   },
            //   child: Text('Return to Homepage'),
            // ),
          ],
        ),
      ),
    );
  }
}
