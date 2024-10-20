import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maps/features/auth/signin/presentation/view/widget/phone_number_flag.dart';
import '../../../../../../core/theme/styles.dart';
import '../../../../../../core/theme/widget/app_button.dart';

class SigninViewBody extends StatelessWidget {
  const SigninViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 50.h),
      child: Column(
        children: [
          Text(
            "What is your phone number?",
            style: Styles.font24black700w,
          ),
          SizedBox(height: 30.h),
          Text(
            "please enter your phone number to verify your account",
            style:
                Styles.font18blackew700.copyWith(fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 30.h),
          const PhoneNumberFlag(),
          SizedBox(height: 30.h),
          Align(
              alignment: Alignment.centerRight,
              child: AppButton(text: "Next", width: 100.w))
        ],
      ),
    );
  }
}
