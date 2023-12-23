import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taptoparty/themes/app_colors.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';

import 'onboarding_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 300.h,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(12),
                ),
                child: Image.asset(
                  "images/Rectangle 1.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tap To Party",
                    style: AppTextStyles.gfsDidotStyle,
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    "Where Every Tap Sparks a Celebration!! Turn Moments into unforgettable Parties with ease. Plan, invite, groove-all at your fingertips.",
                    style: AppTextStyles.plusJakartaSans,
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          navigateToPage(
                              context: context,
                              pageName: const OnboardingScreen());
                        },
                        child: Container(
                          height: 40.h,
                          width: 150.w,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: AppColors.mainColor),
                          child: Text(
                            "Let’s Start Tapping!",
                            style: AppTextStyles.plusJakartaSans.copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 14.sp,
                                color: AppColors.primaryWhite),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      SizedBox(
                          height: 50, child: Image.asset("images/glass.gif"))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
