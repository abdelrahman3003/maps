import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maps/features/auth/signin/controller/signin/signin_cubit.dart';

import '../../../../../../../core/class/validation.dart';
import '../../../../../../../core/functions/generate_country_flag.dart';
import '../../../../../../../core/theme/colors.dart';
import '../../../../../../../core/theme/styles.dart';
import '../../../../../../../core/theme/widget/app_textformfield.dart';

class PhoneNumberFlag extends StatelessWidget {
  const PhoneNumberFlag({super.key});

  @override
  Widget build(BuildContext context) {
   var cubit= context.read<SigninCubit>();
    return Form(
      key: cubit.signinFormKey,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Container(
              height: 50.h,
              width: 80,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.grey2,
                  ),
                  borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Text(
                  '${generateCountryFlag('eg')} + 20',
                  style: Styles.font14black400w,
                ),
              ),
            ),
          ),
          Expanded(
              child: AppTextformfield(
            keyboardType: TextInputType.phone,
            validator: (val) => FormValidator.phone(val),
            controller: cubit.phoneController,
          ))
        ],
      ),
    );
  }
}
