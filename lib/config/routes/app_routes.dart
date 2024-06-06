import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_app/screens/login/entry_screen.dart';
import 'package:quiz_app/screens/login/signup_screen.dart';
import 'package:quiz_app/screens/splash/splash.dart';
import 'package:quiz_app/screens/welcome/welcome_screen.dart';

import '../../screens/login/login_screen.dart';

class Routes {
  static const String initial = '/';
  static const String appHome = '/app-home';
  static const String appLogin = '/app-login';
  static const String appRegister = '/app-register';
  static const String appWelcome = '/app-welcome';
}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initial:
        return MaterialPageRoute(
            builder: (
              context,
            ) {
              return const SplashScreen();
            },
            settings: routeSettings);

      case Routes.appHome:
        return MaterialPageRoute(
            builder: (context) {
              return WelcomeScreen(id: Routes.appHome);
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
              return const EntryScreen();
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
