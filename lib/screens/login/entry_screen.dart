import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:quiz_app/components/countup.dart';
import 'package:quiz_app/components/custom_bottom_screen.dart';
import 'package:quiz_app/config/routes/app_routes.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class EntryScreen extends StatelessWidget {
  const EntryScreen();
  static String id = 'home_screen';

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

  Future<UserCredential> signInWithGoogle(context) async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn(
            clientId:
                '274518596440-vokk382gksi9vl9141s7849r94dh0sq3.apps.googleusercontent.com')
        .signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    final UserCredential userCredntials =
        await FirebaseAuth.instance.signInWithCredential(credential);

    if (!userCredntials.user!.isAnonymous) {
      await _ensureUserInFirestore();
    }
    return userCredntials;
  }

  @override
  Widget build(BuildContext context) {
    final screenImage = (Theme.of(context).brightness == Brightness.dark)
        ? 'logo.png'
        : 'logo.png';

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: OnBoardingSlider(
        pageBackgroundColor: Theme.of(context).colorScheme.background,
        headerBackgroundColor: Theme.of(context).colorScheme.background,
        finishButtonText: 'Register',
        onFinish: () {
          Navigator.pushNamed(context, Routes.appRegister);
        },
        finishButtonStyle: FinishButtonStyle(
          backgroundColor: Theme.of(context).colorScheme.tertiary,
          foregroundColor: Theme.of(context).colorScheme.onTertiary,
        ),
        skipTextButton: Text(
          'Skip',
          style: TextStyle(
              color: Theme.of(context).colorScheme.onBackground, fontSize: 20),
        ),
        trailing: Text(
          'Login',
          style: TextStyle(
              color: Theme.of(context).colorScheme.onBackground, fontSize: 20),
        ),
        trailingFunction: () {
          Navigator.popAndPushNamed(context, Routes.appLogin);
        },
        background: [
          Image.asset('assets/images/bg.png'),
          Image.asset('assets/images/bg.png'),
          Image.asset('assets/images/bg.png'),
          Image.asset('assets/images/bg.png'),
        ],
        centerBackground: true,
        totalPage: 4,
        speed: 1.8,
        pageBodies: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 100,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage('assets/images/logo.png'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'JOIN A FAMILY OF OVER 377,000 CERTIFIED DRONE PILOTS',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontWeight: FontWeight.bold,
                      decorationStyle: TextDecorationStyle.double),
                ),
                SizedBox(
                  height: 30,
                ),
                Countup(
                  begin: 0,
                  end: 377447,
                  duration: Duration(seconds: 2),
                  separator: ',',
                  style: TextStyle(
                    fontSize: 36,
                    color: Theme.of(context).colorScheme.surfaceVariant,
                  ),
                ),
                Text('Certified Remote Pilots'),
                SizedBox(
                  height: 40,
                ),
                Countup(
                  begin: 0,
                  end: 781781,
                  duration: Duration(seconds: 3),
                  separator: ',',
                  style: TextStyle(
                    fontSize: 36,
                    color: Theme.of(context).colorScheme.surfaceVariant,
                  ),
                ),
                Text('Total Drones Registered'),
                SizedBox(
                  height: 40,
                ),
                Countup(
                  begin: 0,
                  end: 375226,
                  duration: Duration(milliseconds: 2500),
                  separator: ',',
                  style: TextStyle(
                    fontSize: 36,
                    color: Theme.of(context).colorScheme.surfaceVariant,
                  ),
                ),
                Text('Commercial Drones Registered'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage('assets/images/pilot.png'),
                      ),
                    ),
                  ),
                ),
                Text(
                  'Launch your certification path and elevate your career in the skies!',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  height: 50,
                ),
//                 Markdown(data: '''
// * Pass the exam and become an FAA certified commercial drone pilot.
// * Pass the exam and receive a commercial drone license.
// * You have to miss more than 18 questions to fail the test. In that case, you’ll fail.
// * Students and corporations use our course as a refresher before taking the FAA exam.
// * Two 60-minute timed practice exams.
// * Thousands of updated practice questions with explanations.
// * Dozens of additional practice quizzes specific to each lesson.
// * Hundreds of additional practice quizzes.
//             ''')
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 100,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage('assets/images/passed.png'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Prepare for and pass the FAA Part 107 drone license exam with ease!',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            height: 300,
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 3,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage('assets/images/logo.png'),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: () async {
                          final userCredential =
                              await FirebaseAuth.instance.signInAnonymously();
                          if (context.mounted) {
                            if (userCredential.user != null) {
                              // Successfully signed in

                              Navigator.pushReplacementNamed(
                                  context, Routes.appHome);
                            } else {
                              Navigator.popAndPushNamed(
                                  context, Routes.appLogin);
                            }
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text('Test Flight Sign-In Anonomously'),
                        ),
                      ),
                      SizedBox(height: 50),
                      const Text(
                        'Sign up using',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // IconButton(
                            //   onPressed: () {},
                            //   icon: CircleAvatar(
                            //     radius: 25,
                            //     child: Image.asset('assets/icons/facebook.png'),
                            //   ),
                            // ),
                            IconButton(
                              onPressed: () async {
                                try {
                                  try {
                                    final userCredential =
                                        await signInWithGoogle(context);
                                    if (context.mounted) {
                                      if (userCredential.user != null) {
                                        // Successfully signed in

                                        await Navigator.pushReplacementNamed(
                                            context, Routes.initial);
                                      } else {
                                        await Navigator.popAndPushNamed(
                                            context, Routes.appLogin);
                                      }
                                    }
                                  } catch (error) {
                                    // Handle errors, such as showing a dialog or a snackbar
                                    if (context.mounted) {
                                      await Navigator.popAndPushNamed(
                                          context, Routes.appLogin);
                                    }
                                  }
                                } catch (e) {
                                  signUpAlert(
                                    context: context,
                                    onPressed: () {
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
                              icon: Image.asset('assets/icons/google.png'),
                              iconSize: MediaQuery.of(context).size.width / 2,
                            ),
                            // IconButton(
                            //   onPressed: () {},
                            //   icon: CircleAvatar(
                            //     radius: 25,
                            //     child: Image.asset(
                            //       'assets/icons/linkedin.png',
                            //       height: 70,
                            //       width: 100,
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
