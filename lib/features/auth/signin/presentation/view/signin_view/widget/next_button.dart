import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maps/core/class/dialog.dart';
import 'package:maps/core/class/navigator.dart';

import '../../../../../../../core/constant/routes.dart';
import '../../../../../../../core/theme/widget/app_button.dart';
import '../../../../controller/signin/signin_cubit.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLoading = false;

    return BlocBuilder<SigninCubit, SigninState>(
      builder: (context, state) {
        if (state is SigninLoading) {
          isLoading = true;
        }
        if (state is SigninError) {
          isLoading = false;
          AppDialog().showSnackbar(context, state.errorMessage);
        }
        if (state is SigninSuccess) {
          context.pushNameed(Routes.home);
        }
        return AppButton(
          isLoading: isLoading,
          width: 100.w,
          text: "Next",
          onPressed: () {
            !isLoading ? context.read<SigninCubit>().phoneSignin() : null;
          },
        );
      },
    );
  }
}
