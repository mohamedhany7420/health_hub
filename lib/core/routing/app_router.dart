import 'package:flutter/material.dart';
import 'package:health_hub/core/routing/routes.dart';
import 'package:health_hub/features/auth/login_screen.dart';
import 'package:health_hub/features/onboarding/screens/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    try {
      switch (settings.name) {
        case Routes.onBoardingScreen:
          return MaterialPageRoute(
            builder: (context) => const OnboardingScreen(),
          );
        case Routes.loginScreen:
          return MaterialPageRoute(builder: (context) => const LoginScreen());
        default:
          return MaterialPageRoute(
            builder:
                (context) => Scaffold(
                  body: Center(
                    child: Text("No route defined for ${settings.name}"),
                  ),
                ),
          );
      }
    } catch (e) {
      return MaterialPageRoute(
        builder:
            (context) => Scaffold(
              body: Center(
                child: Text(
                  "An error occurred during navigation: ${e.toString()}",
                ),
              ),
            ),
      );
    }
  }
}
