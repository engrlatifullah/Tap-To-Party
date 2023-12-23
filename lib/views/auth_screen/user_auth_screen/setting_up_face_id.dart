import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_colors.dart';
import 'package:taptoparty/themes/app_textstyles.dart';

class SettingUpFaceId extends StatefulWidget {
  const SettingUpFaceId({super.key});

  @override
  State<SettingUpFaceId> createState() => _SettingUpFaceIdState();
}

class _SettingUpFaceIdState extends State<SettingUpFaceId> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 60),
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.black, width: 2)),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset("images/Face ID.png"),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Face ID',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF65666A),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.32,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    }).then((value) {
      Timer(Duration(seconds: 2), () {
        Navigator.pop(context);
        showCupertinoDialog(
            context: context,
            builder: (BuildContext context) {
              return CupertinoAlertDialog(
                title: Column(
                  children: [
                    Image.asset("images/Face ID.png"),
                    SizedBox(height: 10),
                    Text(
                      'Face Not Recognised',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.41,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Try Again',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.08,
                      ),
                    ),
                  ],
                ),
                content: Column(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Try Face ID Again',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF4A4E69),
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.41,
                        ),
                      ),
                    ),
                    Divider(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Cancel',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          color: Color(0xFF4A4E69),
                          fontSize: 17,
                          letterSpacing: -0.41,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            });
      });
    });

    super.initState();
  }

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
