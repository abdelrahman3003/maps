import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maps/features/auth/signin/controller/signin/signin_cubit.dart';

import '../../features/auth/signin/presentation/view/signin_view/signin_view.dart';

class Routes {
  static const String sigin = '/signin';
  static const String home = '/home';
  static Route generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case "/":
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => SigninCubit(),
                  child: const SigninView(),
                ));
      case home:
        return MaterialPageRoute(
            builder: (context) => const Scaffold(
                  body: Center(child: Text("Mpas")),
                ));

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
