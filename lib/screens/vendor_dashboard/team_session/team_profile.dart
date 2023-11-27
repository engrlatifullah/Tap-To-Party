import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taptoparty/screens/vendor_dashboard/team_session/team_member_dashboard.dart';
import 'package:taptoparty/themes/app_colors.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/widget/customText_field.dart';
import 'package:taptoparty/widget/custom_input.dart';
import 'package:taptoparty/widget/primary_button.dart';
class Teamprofile extends StatefulWidget {
  const Teamprofile({super.key});

  @override
  State<Teamprofile> createState() => _TeamprofileState();
}

class _TeamprofileState extends State<Teamprofile> {
  final List tabTitle=["Profile","Message","Team","Task"];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(Icons.menu,size: 30,),
                  SizedBox(width: 60,),
                  Text('Account',style: AppTextStyles.gfsDidotStyle.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),)
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(tabTitle.length, (index) {
                return GestureDetector(
                  onTap: (){
                    _currentIndex = index;
                    setState(() {

                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: _currentIndex == index ? AppColors.mainColor : Colors.transparent,
                    ),
                    child: Text(tabTitle[index],style: AppTextStyles.plusJakartaSans.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: _currentIndex == index ? AppColors.primaryWhite : AppColors.primaryBlack,
                    ),),
                  ),
                );
              }),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 80.h,
              width: 80.w,
              child: Image.asset(
               "images/uni.jpg",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 15,),
            Text('Mary Johnson',style: AppTextStyles.plusJakartaSans.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 23,
            ),),
            Text('Team Manager',style: AppTextStyles.plusJakartaSans.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),),
            SizedBox(height: 30,),
            CustomTextField(
              hintText: 'Email',
            ),
            SizedBox(height: 25,),

            CustomTextField(
              hintText: 'Phone',
            ),
            SizedBox(height: 25,),
            CustomTextField(
              hintText: 'Address',
            ),
            SizedBox(height: 50,),
            SizedBox(
              height: 40,
                width: 200,
                child: PrimaryButton(title:'Login' , onTap: (){
                  navigateToPage(context: context, pageName: TeamMemberDashboard());
                }))

          ],
        ),
      ),
    );
  }
}
