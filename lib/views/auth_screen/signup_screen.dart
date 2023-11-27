import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taptoparty/themes/app_colors.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/widget/custom_input.dart';
import 'package:taptoparty/widget/primary_button.dart';

import 'login_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Get Started",
                  style: AppTextStyles.gfsDidotStyle
                      .copyWith(fontSize: 36.sp, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 20.h),
                Container(
                  height: 100.h,
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.primaryLightGrey),
                  child: Row(
                    children: [
                      Expanded(
                          child: PrimaryButton(title: "User", onTap: () {})),
                      SizedBox(width: 20.w),
                      Expanded(
                          child: PrimaryButton(title: "Vendor", onTap: () {})),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                Text(
                  "Use the form below to get started",
                  style: AppTextStyles.plusJakartaSans
                      .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w300),
                ),
                SizedBox(height: 20.h),
                Text(
                  "Email Address",
                  style: AppTextStyles.plusJakartaSans
                      .copyWith(fontWeight: FontWeight.normal, fontSize: 12.sp),
                ),
                SizedBox(height: 10.h),
                const CustomInput(hintText: "Email",),
                SizedBox(height: 20.h),
                Text(
                  "Password",
                  style: AppTextStyles.plusJakartaSans
                      .copyWith(fontWeight: FontWeight.normal, fontSize: 12.sp),
                ),
                SizedBox(height: 10.h),
                const CustomInput(hintText: "Password",),
                SizedBox(height: 20.h),
                Text(
                  "Confirm Password",
                  style: AppTextStyles.plusJakartaSans
                      .copyWith(fontWeight: FontWeight.normal, fontSize: 12.sp),
                ),
                SizedBox(height: 10.h),
                const CustomInput(hintText: "Confirm Password",),
                SizedBox(height: 20.h),
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 150.w,
                    child: PrimaryButton(
                      onTap: () {},
                      title: "Create Account",
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Center(
                  child: Text(
                    "Use a social platform to continue",
                    style: AppTextStyles.plusJakartaSans,
                  ),
                ),
                SizedBox(height: 20.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                        radius: 25,
                        backgroundColor: AppColors.socialButtonColor,
                        child: SvgPicture.asset("images/googleICon.svg")
                    ),
                    SizedBox(width: 10.w),

                    CircleAvatar(
                        radius: 25,
                        backgroundColor: AppColors.socialButtonColor,
                        child: FaIcon(FontAwesomeIcons.facebook,color: Colors.blue.shade700,)
                    ),
                    SizedBox(width: 10.w),

                    CircleAvatar(
                        radius: 25,
                        backgroundColor: AppColors.socialButtonColor,
                        child: FaIcon(FontAwesomeIcons.linkedin,color: Colors.blue.shade700,)
                    ),
                  ],
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: (){
                    navigateToPage(context: context, pageName: LoginScreen());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: AppTextStyles.plusJakartaSans,
                      ),
                      Text(
                        "Login",
                        style: AppTextStyles.plusJakartaSans
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
