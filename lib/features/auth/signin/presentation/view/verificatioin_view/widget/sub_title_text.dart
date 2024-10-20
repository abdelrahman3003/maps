import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/theme/colors.dart';
import '../../../../../../../core/theme/styles.dart';

class SubTitleText extends StatelessWidget {
  const SubTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: "please enter your 6 digits code sent ",
          style: Styles.font14black400w.copyWith(
              fontWeight: FontWeight.w400, height: 1.6, fontSize: 16.sp),
          children: const [
            TextSpan(
                text: "01032970717",
                style: TextStyle(
                  color: AppColors.primary,
                ))
          ]),
    );
  }
}
