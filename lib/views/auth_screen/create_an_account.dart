import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/views/auth_screen/user_auth_screen/user_signup.dart';
import 'package:taptoparty/widget/custom_input.dart';
import 'package:taptoparty/widget/primary_button.dart';

import 'bussniss_owner_registeration/bussniss_owner_registeration.dart.dart';
import 'login_screen.dart';

class CreateAnAccount extends StatelessWidget {
  const CreateAnAccount({Key? key}) : super(key: key);

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
                SizedBox(height: 20),
                Center(
                  child: Text(
                    "Create Account",
                    style: AppTextStyles.gfsDidotStyle
                        .copyWith(fontSize: 24.sp, fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Center(
                  child: Text(
                    "Create an account to start planning and organizing your parties and events",
                    textAlign: TextAlign.center,
                    style: AppTextStyles.plusJakartaSans
                        .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w300),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Text(
                    "Select  your profile  below ",
                    style: AppTextStyles.plusJakartaSans
                        .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w300),
                  ),
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    Expanded(
                        child: PrimaryButton(
                            title: "User",
                            onTap: () {
                              navigateToPage(
                                  context: context,
                                  pageName: UserSignupScreen());
                            })),
                    SizedBox(width: 20.w),
                    Expanded(
                        child: PrimaryButton(
                            title: "Business",
                            onTap: () {
                              navigateToPage(
                                  context: context,
                                  pageName: BusinessOwnerRegistrationScreen());
                            })),
                  ],
                ),
                SizedBox(height: 30.h),
                Text(
                  "Use the form below to get started",
                  style: AppTextStyles.plusJakartaSans
                      .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w300),
                ),
                SizedBox(height: 20.h),
                const CustomInput(
                  hintText: "username",
                ),
                SizedBox(height: 20.h),
                const CustomInput(
                  hintText: "Password",
                ),
                SizedBox(height: 20.h),
                const CustomInput(
                  hintText: "Confirm Password",
                ),
                SizedBox(height: 20.h),
                PrimaryButton(
                  backgroundColor: Color(0xFFA99F96),
                  textColor: Colors.black,
                  onTap: () {},
                  title: "Create Account",
                ),
                SizedBox(height: 20.h),
                GestureDetector(
                  onTap: () {
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
                ),
                SizedBox(height: 20.h),
                Center(
                  child: Text(
                    "or continue with",
                    style: AppTextStyles.plusJakartaSans,
                  ),
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          "images/googleICon.svg",
                          height: 30,
                          width: 30,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Center(
                        child: FaIcon(
                          size: 30,
                          FontAwesomeIcons.facebook,
                          color: Colors.blue.shade700,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
