import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taptoparty/views/auth_screen/widget/otp_field.dart';

import '../../themes/app_textstyles.dart';
import '../../utils/navigation.dart';
import '../../widget/primary_button.dart';
import 'new_password_screen.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Center(
              child: Text(
                'Otp Verification',
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 50),
            Center(
              child: Text(
                'Enter the OTP send to your\nmobile or email',
                textAlign: TextAlign.center,
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OtpField(),
                SizedBox(width: 20),
                OtpField(),
                SizedBox(width: 20),
                OtpField(),
                SizedBox(width: 20),
                OtpField(),
              ],
            ),
            SizedBox(height: 50),
            Center(
              child: SizedBox(
                  width: 235.w,
                  child: PrimaryButton(
                      title: 'Send Otp',
                      onTap: () {
                        navigateToPage(
                          context: context,
                          pageName: NewPasswordScreen(),
                        );
                      })),
            )
          ],
        ),
      ),
    );
  }
}
