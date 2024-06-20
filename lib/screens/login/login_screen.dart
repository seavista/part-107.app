import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:quiz_app/components/custom_bottom_screen.dart';
import 'package:quiz_app/config/routes/app_routes.dart';
import 'package:quiz_app/screens/welcome/welcome_screen.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen();
  static String id = 'login_screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  late String _email;
  late String _password;
  bool _saving = false;

  Future<void> _ensureUserInFirestore() async {
    try {
      HttpsCallable callable =
          FirebaseFunctions.instance.httpsCallable('ensureUserInFirestore');
      final results = await callable();
      print(results.data['message']);
    } catch (e) {
      print("Error calling Cloud Function: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pushReplacementNamed(Routes.initial);
        return false;
      },
      child: Scaffold(
        extendBody: true,
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                // const TopScreenImage(screenImageName: 'welcome.png'),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        padding: EdgeInsets.all(10),
                        height: MediaQuery.of(context).size.height / 5,
                        child: Image.asset("assets/images/logo.png",
                            fit: BoxFit.fitHeight),
                      ),
                      Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.onPrimary),
                      ),
                      TextField(
                          onChanged: (value) {
                            _email = value;
                          },
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                          decoration: InputDecoration(hintText: 'Email')),
                      TextField(
                        obscureText: true,
                        onChanged: (value) {
                          _password = value;
                        },
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(hintText: 'Password'),
                      ),
                      CustomBottomScreen(
                        textButton: 'Login',
                        heroTag: 'login_btn',
                        question: 'Forgot password?',
                        buttonPressed: () async {
                          FocusManager.instance.primaryFocus?.unfocus();
                          setState(() {
                            _saving = true;
                          });
                          try {
                            await _auth.signInWithEmailAndPassword(
                                email: _email, password: _password);

                            await _ensureUserInFirestore();

                            if (context.mounted) {
                              setState(() {
                                _saving = false;
                                Navigator.popAndPushNamed(
                                    context, Routes.appLogin);
                              });
                              Navigator.pop(context);
                              Navigator.popAndPushNamed(
                                  context, Routes.appHome);
                            }
                          } catch (e) {
                            signUpAlert(
                              context: context,
                              onPressed: () {
                                setState(() {
                                  _saving = false;
                                });
                                Navigator.popAndPushNamed(
                                    context, Routes.appLogin);
                              },
                              title: 'WRONG PASSWORD OR EMAIL',
                              desc:
                                  'Confirm your email and password and try again',
                              btnText: 'Try Now',
                            ).show();
                          }
                        },
                        questionPressed: () {
                          signUpAlert(
                            onPressed: () async {
                              await FirebaseAuth.instance
                                  .sendPasswordResetEmail(email: _email);
                            },
                            title: 'RESET YOUR PASSWORD',
                            desc: 'Click on the button to reset your password',
                            btnText: 'Reset Now',
                            context: context,
                          ).show();
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
