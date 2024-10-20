import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/constant/routes.dart';
import 'core/theme/colors.dart';

class MapsApp extends StatelessWidget {
  const MapsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 821),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              checkboxTheme: CheckboxThemeData(
                side: BorderSide(
                    color: AppColors.grey2, // Border color
                    width: 2.w // Border width
                    ),
              ),
              primaryColor: AppColors.primary,
              scaffoldBackgroundColor: AppColors.white,
            ),
            onGenerateRoute: Routes.generateRoute,
          );
        });
  }
}
