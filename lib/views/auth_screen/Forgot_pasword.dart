import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/widget/primary_button.dart';

import '../../themes/app_textstyles.dart';
import '../../widget/custom_input.dart';
import 'otp_screen.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
              ),
              Center(
                child: Text(
                  'Forgot Password ',
                  style: AppTextStyles.gfsDidotStyle.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                      text: "We Will send you a one time password on\nyour ",
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: "Mobile Number or Email provided",
                          style: AppTextStyles.plusJakartaSans.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        )
                      ]),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                "Mobile Number/Email",
                style: AppTextStyles.plusJakartaSans
                    .copyWith(fontWeight: FontWeight.normal, fontSize: 12),
              ),
              SizedBox(height: 10),
              const CustomInput(
                hintText: "Email",
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: SizedBox(
                    width: 235.w,
                    child: PrimaryButton(
                        title: 'Send Otp',
                        onTap: () {
                          navigateToPage(
                            context: context,
                            pageName: OtpScreen(),
                          );
                        })),
              )
            ],
          ),
        ),
      ),
    );
  }
}
