import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taptoparty/views/auth_screen/bussniss_owner_registeration/bussniss_owner_registeration.dart.dart';
import 'package:taptoparty/views/auth_screen/create_an_account.dart';
import 'package:taptoparty/views/auth_screen/user_auth_screen/user_signup2.dart';
import 'package:taptoparty/views/user_screens/user_home_dashboard_screen.dart';
import 'package:taptoparty/widget/primary_button.dart';

import '../../themes/app_textstyles.dart';
import '../../utils/navigation.dart';
import '../../widget/custom_input.dart';
import 'Forgot_pasword.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool remember = false;

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
              SizedBox(height: 10.h),
              Row(
                children: [
                  Expanded(
                      child: PrimaryButton(
                          title: "User",
                          onTap: () {
                            navigateToPage(
                                context: context, pageName: UserSignup2());
                          })),
                  SizedBox(width: 20.w),
                  Expanded(
                      child: PrimaryButton(
                          title: "Service Provider",
                          onTap: () {
                            navigateToPage(
                                context: context,
                                pageName: BusinessOwnerRegistrationScreen());
                          })),
                ],
              ),
              SizedBox(height: 10.h),
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
              PrimaryButton(
                  title: "Login",
                  onTap: () {
                    navigateToPage(
                        context: context, pageName: UserHomeDashboardScreen());
                  }),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 25,
                        width: 25,
                        child: Checkbox(
                            value: remember,
                            onChanged: (v) {
                              setState(() {
                                remember = v!;
                              });
                            }),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Remember me ",
                        style: AppTextStyles.plusJakartaSans.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ],
                  ),
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
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(left: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.shade300,
                ),
                child: Row(
                  children: [
                    Text(
                      "Or Sign in with  ",
                      style: AppTextStyles.plusJakartaSans,
                    ),
                    Spacer(),
                    SvgPicture.asset("images/googleICon.svg"),
                    SizedBox(width: 10.w),
                    FaIcon(
                      FontAwesomeIcons.facebook,
                      color: Colors.blue.shade700,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  navigateToPage(
                      context: context, pageName: const CreateAnAccount());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: AppTextStyles.plusJakartaSans,
                    ),
                    Text(
                      "Create Account",
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
