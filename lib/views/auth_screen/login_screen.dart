import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taptoparty/screens/vendor_dashboard/vendor_registration.dart';
import 'package:taptoparty/views/auth_screen/signup_screen.dart';
import 'package:taptoparty/widget/primary_button.dart';

import '../../themes/app_colors.dart';
import '../../themes/app_textstyles.dart';
import '../../utils/navigation.dart';
import '../../widget/custom_input.dart';
import 'Forgot_pasword.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Welcome Back",
                  style: AppTextStyles.gfsDidotStyle.copyWith(
                    fontSize: 36.sp,
                  ),
                ),
              ),
              SizedBox(height: 40.h),
              Text(
                "Use the form below to access your account.",
                textAlign: TextAlign.center,
                style: AppTextStyles.plusJakartaSans.copyWith(
                  fontWeight: FontWeight.w300,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                "Email Address",
                style: AppTextStyles.plusJakartaSans
                    .copyWith(fontWeight: FontWeight.normal, fontSize: 12.sp),
              ),
              SizedBox(height: 10.h),
              const CustomInput(
                hintText: "Email",
              ),
              SizedBox(height: 20.h),
              Text(
                "Password",
                style: AppTextStyles.plusJakartaSans
                    .copyWith(fontWeight: FontWeight.normal, fontSize: 12.sp),
              ),
              SizedBox(height: 10.h),
              const CustomInput(
                hintText: "Password",
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      navigateToPage(
                          context: context, pageName: ForgotScreen());
                    },
                    child: Text(
                      "Forgot Password? ",
                      style: AppTextStyles.plusJakartaSans.copyWith(
                          fontWeight: FontWeight.w200, fontSize: 12.sp),
                    ),
                  ),
                  SizedBox(width: 40.w),
                  Expanded(
                      child: PrimaryButton(
                          title: "Login",
                          onTap: () {
                            navigateToPage(
                                context: context,
                                pageName: VendorRegistration());
                          })),
                ],
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
                      child: SvgPicture.asset("images/googleICon.svg")),
                  SizedBox(width: 10.w),
                  CircleAvatar(
                      radius: 25,
                      backgroundColor: AppColors.socialButtonColor,
                      child: FaIcon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue.shade700,
                      )),
                  SizedBox(width: 10.w),
                  CircleAvatar(
                      radius: 25,
                      backgroundColor: AppColors.socialButtonColor,
                      child: FaIcon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.blue.shade700,
                      )),
                ],
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  navigateToPage(
                      context: context, pageName: const SignUpScreen());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: AppTextStyles.plusJakartaSans,
                    ),
                    Text(
                      "SignUp",
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
    );
  }
}
