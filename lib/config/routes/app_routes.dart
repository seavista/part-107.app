import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_app/screens/login/entry_screen.dart';
import 'package:quiz_app/screens/login/signup_screen.dart';
import 'package:quiz_app/screens/purchase/success.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';
import 'package:quiz_app/screens/score/score_screen.dart';
import 'package:quiz_app/screens/settings/settings.dart';
import 'package:quiz_app/screens/splash/splash.dart';
import 'package:quiz_app/screens/welcome/welcome_screen.dart';

import '../../screens/login/login_screen.dart';

class Routes {
  static const String initial = '/';
  static const String appHome = '/home';
  static const String appLogin = '/login';
  static const String appRegister = '/register';
  static const String appWelcome = '/welcome';
  static const String appScore = '/score';
  static const String appQuiz = '/quiz';
  static const String appSettings = '/settings';
  static const String appSuccess = '/success';
}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    Uri uri = Uri.parse(routeSettings.name ?? '');

    switch (routeSettings.name) {
      case Routes.initial:
        String? sessionId = uri.queryParameters['sessionId'];

        //handle the return from a payment
        if (sessionId != null) {
          return MaterialPageRoute(
              builder: (context) {
                return SuccessScreen(sessionId: sessionId);
              },
              settings: routeSettings);
        } else {
          return MaterialPageRoute(
              builder: (context) {
                return const SplashScreen();
              },
              settings: routeSettings);
        }

      case Routes.appHome:
        return MaterialPageRoute(
            builder: (context) {
              return WelcomeScreen();
            },
            settings: routeSettings);

      case Routes.appLogin:
        return MaterialPageRoute(
            builder: (context) {
              return const LoginScreen();
            },
            settings: routeSettings);

      case Routes.appRegister:
        return MaterialPageRoute(
            builder: (context) {
              return const SignUpScreen();
            },
            settings: routeSettings);

      case Routes.appWelcome:
        return MaterialPageRoute(
            builder: (context) {
              return WelcomeScreen();
            },
            settings: routeSettings);

      case Routes.appSettings:
        return MaterialPageRoute(
            builder: (context) {
              return SettingsScreen();
            },
            settings: routeSettings);

      case Routes.appQuiz:
        return MaterialPageRoute(
            builder: (context) {
              return QuizScreen();
            },
            settings: routeSettings);

      case Routes.appScore:
        return MaterialPageRoute(
            builder: (context) {
              return ScoreScreen();
            },
            settings: routeSettings);

      case Routes.appSuccess:
        String? sessionId = uri.queryParameters['sessionId'];
        return MaterialPageRoute(
            builder: (context) {
              return SuccessScreen(sessionId: sessionId);
            },
            settings: routeSettings);

      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
        builder: ((context) => const Scaffold(
              body: Center(
                child: Text('No Route Found'),
              ),
            )));
  }
}
