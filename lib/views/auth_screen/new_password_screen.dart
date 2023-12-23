import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/views/auth_screen/login_screen.dart';
import 'package:taptoparty/widget/custom_input.dart';
import 'package:taptoparty/widget/primary_button.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 90,
        leading: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.navigate_before,
                  color: Colors.black,
                )),
            Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text(
              'Password Reset',
              style: AppTextStyles.gfsDidotStyle.copyWith(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 50),
            Text(
              'Please enter new password',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 30),
            CustomInput(
              hintText: "Enter New Password",
              suffixIcon: Icon(Icons.visibility_off),
            ),
            SizedBox(height: 20),
            CustomInput(
              hintText: "Re-Enter Password",
              suffixIcon: Icon(Icons.visibility_off),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: 235.w,
              child: PrimaryButton(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          backgroundColor: Color(0xFFA99F96),
                          shape: RoundedRectangleBorder(),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.verified_rounded,
                                  size: 50,
                                  color: Color(0xFF34A853),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'Password Updated\nSuccessfully',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.plusJakartaSans.copyWith(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(height: 30),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushAndRemoveUntil(context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) {
                                      return LoginScreen();
                                    }), (route) => false);
                                  },
                                  child: Container(
                                    width: 247,
                                    height: 82,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF4A4E69),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Back to Home',
                                        style: AppTextStyles.plusJakartaSans
                                            .copyWith(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      });
                },
                title: "Save & Login",
              ),
            )
          ],
        ),
      ),
    );
  }
}
