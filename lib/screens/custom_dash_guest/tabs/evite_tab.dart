import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_colors.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/widget/customText_field.dart';

import '../buget_tracker/buget_tracker.dart';

class EviteTab extends StatefulWidget {
  const EviteTab({super.key});

  @override
  State<EviteTab> createState() => _EviteTabState();
}

class _EviteTabState extends State<EviteTab> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          height: 330,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.mainColor,
          ),
          child: Image(image: AssetImage('images/pic10.png'),),
        ),
        SizedBox(height:20 ,),
        CustomTextField(
          hintText: 'Guest Name',
        ),
        SizedBox(height: 20,),
        CustomTextField(
          hintText: 'Guest Email',
        ),
        SizedBox(height: 20,),
        CustomTextField(
          hintText: 'Guest Phone Number',
        ),
        SizedBox(height: 20,),
        CustomTextField(
          hintText: 'From',
        ),
        SizedBox(height: 20,),
        SizedBox(
            height: 50,
            width: 130,
            child: InkWell(
              onTap: (){
                navigateToPage(context: context, pageName: BudgetTracker());
              },
              child: Container(
                    height: 50,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffA99F96)
               ),
                child: Center(child: Text('Send',style: TextStyle(color: Colors.black,fontSize: 20),)),
              ),
            ),
        )],
    );
  }
}
