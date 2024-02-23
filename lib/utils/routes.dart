// ignore_for_file: unused_import
///locator<NavigationService>().pushNamed(OTPScreen.id);

import 'package:flutter/material.dart';
import 'package:pop_quiz/model/services/navigation_service.dart';
import 'package:pop_quiz/utils/locator.dart';
import 'package:pop_quiz/view_ui/screens/home_screen.dart';
import 'package:pop_quiz/view_ui/screens/navigation_screen.dart';
import 'package:pop_quiz/view_ui/screens/splash_screen.dart';

Route<RouteSettings> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case SplashScreen.id:
      return MaterialPageRoute(
        builder: (_) => const SplashScreen(),
      );
    case HomeScreen.id:
      return MaterialPageRoute(
        builder: (_) => const HomeScreen(),
      );
    case NavigationScreen.id:
      return MaterialPageRoute(
        builder: (_) => const NavigationScreen(),
      );

    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(child: Text('Unknown route')),
        ),
      );
  }
}
