import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/views/auth_screen/user_auth_screen/setting_up_face_id.dart';
import 'package:taptoparty/widget/custom_input.dart';
import 'package:taptoparty/widget/primary_button.dart';

class UserSignupScreen extends StatelessWidget {
  const UserSignupScreen({super.key});

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
            )
          ],
        ),
        title: Text(
          "Sign up",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  SizedBox(
                      height: 90,
                      width: 90,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            "images/im.png",
                            fit: BoxFit.cover,
                          ))),
                  Positioned(
                    right: 0,
                    bottom: -3,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.grey.shade300,
                      child: Icon(
                        Icons.edit,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                "Mary Mary Johnson",
                style: AppTextStyles.plusJakartaSans
                    .copyWith(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Your full name",
              style: AppTextStyles.plusJakartaSans
                  .copyWith(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10),
            CustomInput(),
            SizedBox(height: 15),
            Text(
              "Your email Address",
              style: AppTextStyles.plusJakartaSans
                  .copyWith(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10),
            CustomInput(),
            SizedBox(height: 20),
            Text(
              "Create a username ",
              style: AppTextStyles.plusJakartaSans
                  .copyWith(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10),
            CustomInput(),
            SizedBox(height: 20),
            Text(
              "Create a password ",
              style: AppTextStyles.plusJakartaSans
                  .copyWith(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10),
            CustomInput(),
            SizedBox(height: 30),
            PrimaryButton(
                title: "Create Login",
                onTap: () {
                  navigateToPage(context: context, pageName: SettingUpFaceId());
                })
          ],
        ),
      ),
    );
  }
}
