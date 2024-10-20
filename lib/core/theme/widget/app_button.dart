import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors.dart';
import '../styles.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, this.onPressed, required this.text, this.width});
  final void Function()? onPressed;
  final String text;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(AppColors.primary),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize:
                WidgetStateProperty.all(Size(width ?? double.infinity, 50.h)),
            shape: WidgetStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)))),
        child: Text(
          text,
          style: Styles.font16whitew600,
        ));
  }
}
