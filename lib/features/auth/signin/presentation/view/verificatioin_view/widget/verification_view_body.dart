import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maps/features/auth/signin/presentation/view/verificatioin_view/widget/pin_code.dart';
import 'package:maps/features/auth/signin/presentation/view/verificatioin_view/widget/sub_title_text.dart';
import 'package:maps/features/auth/signin/presentation/view/verificatioin_view/widget/verify_button.dart';
import '../../../../../../../core/theme/styles.dart';

class VerificationViewBody extends StatelessWidget {
  const VerificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 50.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Verify your phone number?", style: Styles.font24black700w),
          SizedBox(height: 25.h),
          const SubTitleText(),
          SizedBox(height: 30.h),
          const PinCode(),
          SizedBox(height: 30.h),
          const Align(alignment: Alignment.centerRight, child: VerifyButton())
        ],
      ),
    );
  }
}
