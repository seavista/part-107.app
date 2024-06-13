import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:quiz_app/components/custom_bottom_screen.dart';
import 'package:quiz_app/config/routes/app_routes.dart';

class EntryScreen extends StatelessWidget {
  const EntryScreen();
  static String id = 'home_screen';

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
    return await FirebaseAuth.instance.signInWithCredential(credential);
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
          //Image.asset('assets/images/bg.png'),
          // Image.asset('assets/images/bg.png'),
          // Image.asset('assets/images/bg.png'),
        ],
        centerBackground: true,
        totalPage: 1,
        speed: 1.8,
        pageBodies: [
          // Container(
          //   padding: EdgeInsets.symmetric(horizontal: 40),
          //   child: Column(
          //     children: <Widget>[
          //       SizedBox(
          //         height: 480,
          //       ),
          //       Text(
          //         'Master the skies with our comprehensive FAA Part 107 practice test.',
          //         style: Theme.of(context).textTheme.headlineMedium!.copyWith(
          //               fontWeight: FontWeight.bold,
          //               decorationStyle: TextDecorationStyle.double,
          //             ),
          //       ),
          //     ],
          //   ),
          // ),
          // Container(
          //   padding: EdgeInsets.symmetric(horizontal: 40),
          //   child: Column(
          //     children: <Widget>[
          //       SizedBox(
          //         height: 480,
          //       ),
          //       Text(
          //         'Study Anywhere! Become a FAA certified drone pilot fast.',
          //         style: Theme.of(context).textTheme.headlineMedium!.copyWith(
          //               fontWeight: FontWeight.bold,
          //             ),
          //       ),
          //     ],
          //   ),
          // ),
          // Container(
          //   padding: EdgeInsets.symmetric(horizontal: 40),
          //   child: Column(
          //     children: <Widget>[
          //       SizedBox(
          //         height: 480,
          //       ),
          //       Text(
          //         'Start your path to certification and take control of your future in the skies!',
          //         style: Theme.of(context).textTheme.headlineMedium!.copyWith(
          //               fontWeight: FontWeight.bold,
          //             ),
          //       ),
          //     ],
          //   ),
          // ),
          Container(
            height: 480,
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TopScreenImage(screenImageName: screenImage),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // ElevatedButton(
                        //   onPressed: () async {
                        //     final userCredential =
                        //         await FirebaseAuth.instance.signInAnonymously();
                        //     if (context.mounted) {
                        //       if (userCredential.user != null) {
                        //         // Successfully signed in

                        //         Navigator.pushReplacementNamed(
                        //             context, Routes.appHome);
                        //       } else {
                        //         Navigator.popAndPushNamed(
                        //             context, Routes.appLogin);
                        //       }
                        //     }
                        //   },
                        //   child: Padding(
                        //     padding: const EdgeInsets.all(20.0),
                        //     child: Text('Sign-In Anonomously'),
                        //   ),
                        // ),
                        // SizedBox(height: 50),
                        const Text(
                          'Sign up using',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: CircleAvatar(
                                radius: 25,
                                child: Image.asset('assets/icons/facebook.png'),
                              ),
                            ),
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
                                            context, Routes.appHome);
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
                              icon: CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.transparent,
                                child: Image.asset('assets/icons/google.png'),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: CircleAvatar(
                                radius: 25,
                                child: Image.asset('assets/icons/linkedin.png'),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
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
