import 'package:flutter/material.dart';

import '../../features/auth/signin/presentation/view/signin_view.dart';

class Routes {
  static const String sigin = '/signin';
  static Route generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => const SigninView());

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
