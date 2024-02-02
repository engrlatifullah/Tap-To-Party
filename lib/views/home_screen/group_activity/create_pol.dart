import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_colors.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/widget/primary_button.dart';

class CreatePolScreen extends StatelessWidget {
  const CreatePolScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F0EDED),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                ' Ideas',
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'What’s your Idea',
                    style: AppTextStyles.gfsDidotStyle.copyWith(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Vote',
                    style: AppTextStyles.gfsDidotStyle.copyWith(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: 'Option 1'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 39,
                    height: 36,
                    color: Colors.white,
                    child: Checkbox(
                      value: true,
                      onChanged: (v) {},
                      fillColor: MaterialStateProperty.all(Colors.white),
                      checkColor: AppColors.mainColor,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: 'Option 2'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 39,
                    height: 36,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Add More Options',
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(9)),
              ),
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: PrimaryButton(title: 'Save', onTap: () {}),
              )
            ],
          ),
        ),
      ),
    );
  }
}
