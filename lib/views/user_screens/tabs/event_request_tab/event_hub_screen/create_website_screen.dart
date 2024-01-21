import 'package:flutter/material.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/views/user_screens/tabs/event_request_tab/event_hub_screen/party_site_screen.dart';

import '../../../../../themes/app_textstyles.dart';

class CreateWebSiteScreen extends StatelessWidget {
  const CreateWebSiteScreen({super.key});

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
                )),
            Icon(
              Icons.menu,
            ),
          ],
        ),
        actions: [
          Text(
            ' Tap to Party ',
            style: AppTextStyles.gfsDidotStyle.copyWith(
              fontSize: 20,
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Back to dashboard',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.gfsDidotStyle.copyWith(
                    color: Color(0xFF4A4E69),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Select Your Style',
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      title: "Minimal",
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: CustomButton(
                      title: "Vibrant",
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: CustomButton(
                      title: "Fun",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      title: "Elegant",
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: CustomButton(
                      title: "Festive",
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: CustomButton(
                      title: "Glamour",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      title: "Vintage",
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: CustomButton(
                      title: "Botanical",
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: CustomButton(
                      title: "Nautical",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Text(
                'Event Essentials ',
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 20),
              CustomTextField(
                hintText: "Your First Name",
              ),
              SizedBox(height: 20),
              CustomTextField(
                hintText: "Your Last Name",
              ),
              SizedBox(height: 20),
              CustomTextField(
                hintText: "Event Title",
              ),
              SizedBox(height: 20),
              CustomTextField(
                hintText: "Location",
              ),
              SizedBox(height: 20),
              CustomTextField(
                hintText: "Date",
              ),
              SizedBox(height: 20),
              CustomTextField(
                hintText: "Time",
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  navigateToPage(context: context, pageName: PartySiteScreen());
                },
                child: Container(
                  width: 159,
                  height: 40.43,
                  decoration: ShapeDecoration(
                    color: Color(0xFF4A4E69),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Continue',
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  const CustomTextField({
    super.key,
    this.controller,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.77,
      decoration: ShapeDecoration(
        color: Color(0xEDF1F0ED),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String? title;
  const CustomButton({
    super.key,
    this.onTap,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 116,
        height: 40.43,
        decoration: ShapeDecoration(
          color: Color(0xFFA99F96),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Center(
          child: Text(
            title!,
            style: AppTextStyles.gfsDidotStyle.copyWith(
              color: Color(0xFF4A4E69),
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
