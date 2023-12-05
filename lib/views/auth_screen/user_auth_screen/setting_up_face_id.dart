import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_colors.dart';
import 'package:taptoparty/themes/app_textstyles.dart';

class SettingUpFaceId extends StatelessWidget {
  const SettingUpFaceId({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
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
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Container(
            height: 50,
            width: double.infinity,
            color: AppColors.mainColor,
            child: Center(
              child: Text(
                "Face ID & Passcode",
                style: AppTextStyles.gfsDidotStyle.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Text(
                  "Enter your  Passcode",
                  style: AppTextStyles.plusJakartaSans
                      .copyWith(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IdTextField(),
                    IdTextField(),
                    IdTextField(),
                    IdTextField(),
                    IdTextField(),
                    IdTextField(),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class IdTextField extends StatelessWidget {
  // final TextEditingController controller;
  const IdTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 30,
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
            )),
      ),
    );
  }
}
