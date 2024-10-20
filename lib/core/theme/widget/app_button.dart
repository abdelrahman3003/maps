import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors.dart';
import '../styles.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key,
      this.onPressed,
      this.width,
      required this.text,
      required this.isLoading});
  final void Function()? onPressed;
  final double? width;
  final String text;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(AppColors.primary),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize:
              WidgetStateProperty.all(Size(width ?? double.infinity, 50.h)),
          shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))),
      child: isLoading
          ? SizedBox(
              height: 25.h,
              width: 25.w,
              child: const CircularProgressIndicator(
                color: AppColors.white,
              ),
            )
          : Text(
              text,
              style: Styles.font16whitew600,
            ),
    );
  }
}
