import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_colors.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/widget/customText_field.dart';
import 'package:taptoparty/widget/custom_input.dart';
import 'package:taptoparty/widget/primary_button.dart';

import 'budget_overview.dart';
class BudgetTracker extends StatelessWidget {
  const BudgetTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      leading: Icon(
        Icons.menu,
        size: 35,
        color: Colors.black,
      ),
      title: Text(
        ' Tap to Party ',
        style: AppTextStyles.gfsDidotStyle.copyWith(
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(13.0),
          child: SingleChildScrollView(
            child: Column(
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 75,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffF1F0ED),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text('Event Name',style: AppTextStyles.gfsDidotStyle.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(width: 50,),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          navigateToPage(context: context, pageName: BudgetOverview());
                        },
                        child: Container(
                          height: 75,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xffF1F0ED),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text('Total Expanses',style: AppTextStyles.gfsDidotStyle.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 169,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffF1F0ED),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Add Expenses',style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage('images/mob.png'),
                              ),
                              SizedBox(width: 30,),
                              Container(
                                height: 72,
                                width: 134,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Center(child: Text('add')),
                              ),


                            ],
                          ),
                        ),

                      ],
                    ),

                  ),

                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Text('Budget Overview   ',style: AppTextStyles.gfsDidotStyle.copyWith(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),),
                    SizedBox(width: 20,),
                    Expanded(child: PrimaryButton(title: 'View All  ', onTap: (){}))
                  ],
                ),
                SizedBox(height: 30,),
                ...List.generate(4, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: CustomTextField(
                      hintText: 'Vendor Name ',
                      SuffixIcon: Text('\$550 ',style: AppTextStyles.gfsDidotStyle.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),),
                    ),
                  );
                }),


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 75,
                        width: 160,
                        color: Color(0xffF1F0ED),
                        child: Center(
                          child: Text('Payments Made',style: AppTextStyles.gfsDidotStyle.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Container(
                        height: 75,
                        width: 160,
                        color: Color(0xffF1F0ED),
                        child: Center(
                          child: Text('Payments Pending',style: AppTextStyles.gfsDidotStyle.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 41,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Make a Payment  ',style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: AppColors.primaryWhite,
                        ),),
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                            color: AppColors.primaryWhite,
                          ),
                          child: Icon(Icons.keyboard_arrow_down_rounded),
                        )
                      ],
                    ),
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
