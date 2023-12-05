import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/widget/primary_button.dart';

import '../auth_screen/create_an_account.dart';
import '../auth_screen/login_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [
              0.2,
              0.9
            ],
                colors: [
              Color(0xFFF1F1ED),
              Color(0xFFA99F96),
            ])),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 120,
                width: 140,
                child: Image.asset(
                  "images/onboard image.png",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Welcome",
                style: AppTextStyles.gfsDidotStyle
                    .copyWith(fontSize: 36, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 20),
              Text(
                "Create a memorable occasion with just a few taps! Make planning,inviting and partying effortless..",
                style: AppTextStyles.plusJakartaSans
                    .copyWith(fontWeight: FontWeight.w600, fontSize: 14),
              ),
              SizedBox(height: 40),
              PrimaryButton(
                  title: "Create an account!",
                  onTap: () {
                    navigateToPage(
                        context: context, pageName: CreateAnAccount());
                  }),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  navigateToPage(context: context, pageName: LoginScreen());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: AppTextStyles.gfsDidotStyle
                          .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Login",
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
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
