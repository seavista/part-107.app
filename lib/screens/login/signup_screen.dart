import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:quiz_app/components/custom_bottom_screen.dart';
import 'package:quiz_app/config/routes/app_routes.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen();
  static String id = 'signup_screen';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _auth = FirebaseAuth.instance;
  late String _email;
  late String _password;
  late String _confirmPass;
  bool _saving = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.popAndPushNamed(context, Routes.appWelcome);
        return true;
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const TopScreenImage(screenImageName: 'logo.png'),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Sign Up',
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
                          decoration: const InputDecoration(
                            hintText: 'Email',
                          ),
                        ),
                        TextField(
                          obscureText: true,
                          onChanged: (value) {
                            _password = value;
                          },
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                          decoration: const InputDecoration(
                            hintText: 'Password',
                          ),
                        ),
                        TextField(
                          obscureText: true,
                          onChanged: (value) {
                            _confirmPass = value;
                          },
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                          decoration: const InputDecoration(
                            hintText: 'Confirm Password',
                          ),
                        ),
                        CustomBottomScreen(
                          textButton: 'Sign Up',
                          heroTag: 'signup_btn',
                          question: 'Have an account?',
                          buttonPressed: () async {
                            FocusManager.instance.primaryFocus?.unfocus();
                            setState(() {
                              _saving = true;
                            });
                            if (_confirmPass == _password) {
                              try {
                                await _auth.createUserWithEmailAndPassword(
                                    email: _email, password: _password);

                                if (context.mounted) {
                                  signUpAlert(
                                    context: context,
                                    title: 'GOOD JOB',
                                    desc: 'Go login now',
                                    btnText: 'Login Now',
                                    onPressed: () {
                                      setState(() {
                                        _saving = false;
                                        Navigator.popAndPushNamed(
                                            context, SignUpScreen.id);
                                      });
                                      Navigator.pushNamed(
                                          context, Routes.appLogin);
                                    },
                                  ).show();
                                }
                              } catch (e) {
                                signUpAlert(
                                    context: context,
                                    onPressed: () {
                                      SystemNavigator.pop();
                                    },
                                    title: 'SOMETHING WRONG',
                                    desc: 'Close the app and try again',
                                    btnText: 'Close Now');
                              }
                            } else {
                              showAlert(
                                  context: context,
                                  title: 'WRONG PASSWORD',
                                  desc:
                                      'Make sure that you write the same password twice',
                                  onPressed: () {
                                    Navigator.pop(context);
                                  }).show();
                            }
                          },
                          questionPressed: () async {
                            Navigator.pushNamed(context, Routes.appLogin);
                          },
                        ),
                      ],
                    ),
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
