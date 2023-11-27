import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/widget/primary_button.dart';

import 'co_hosting.dart';
class CreatePol extends StatelessWidget {
  const CreatePol({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffF1F0EDED),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15,),
              Center(
                child: Text(' Ideas',style: AppTextStyles.gfsDidotStyle.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  color: Colors.black,
                ),),
              ),
              SizedBox(height: 20,),
              Text('What’s your Idea',style: AppTextStyles.gfsDidotStyle.copyWith(
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),),
              SizedBox(height: 30,),
              Container(
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
                      border: InputBorder.none,
                      hintText: 'Option 1'
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
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
                        border: InputBorder.none,
                        hintText: 'Option 2'
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Text('Add More Options',style: AppTextStyles.gfsDidotStyle.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 17,
              ),),
              SizedBox(height: 30,),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(9)
                ),
              ),
              SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: PrimaryButton(title: 'Save', onTap: (){
                  navigateToPage(context: context, pageName: CoHosting());
                }),
              )


            ],
          ),
        ),
      ),

    );
  }
}
