import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maps/features/auth/signin/controller/signin/signin_cubit.dart';
import 'package:maps/features/auth/signin/presentation/view/verificatioin_view/verification_view.dart';

import '../../features/auth/signin/presentation/view/signin_view/signin_view.dart';

class Routes {
  static const String siginView = '/signin';
  static const String verificationView = '/verification';
  static Route generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case siginView:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => SigninCubit(),
                  child: const SigninView(),
                ));
      case "/":
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => SigninCubit(),
                  child: const VerificationView(),
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
