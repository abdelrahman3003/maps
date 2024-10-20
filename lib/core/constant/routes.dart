import 'package:flutter/material.dart';

class Routes {
  static const String sigin = '/signin';
  static Route generateRoute(RouteSettings setting) {
    switch (setting.name) {
      // case sigin:
      //   return MaterialPageRoute(builder: (context) => const OnboardingView());

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text("No route defind for ${setting.name}"),
            ),
          ),
        );
    }
  }
}
