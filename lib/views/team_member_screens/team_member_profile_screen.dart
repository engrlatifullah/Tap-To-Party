import 'package:flutter/material.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/views/team_member_screens/team_member_dashboard_screen.dart';

import '../../themes/app_textstyles.dart';

class TeamMemberProfileScreen extends StatelessWidget {
  const TeamMemberProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 90,
        centerTitle: true,
        title: Text(
          'Profile',
          style: AppTextStyles.gfsDidotStyle.copyWith(
            color: Colors.black,
            fontSize: 24,
          ),
        ),
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
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Back to dashboard",
              style: AppTextStyles.gfsDidotStyle.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff4A4E69)),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 73,
                        height: 60,
                        padding: EdgeInsets.all(5),color: Color(0xEDF1F0ED),
                        child: Container(
                          width: 59,
                          height: 50,
                          decoration: ShapeDecoration(
                            color: Color(0xEDF1F0ED),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1, color: Color(0xFF16A0F9)),
                            ),
                          ),
                          child: Center(child: Column(
                            children: [
                              Icon(Icons.add),
                              Text(
                                'image',
                                textAlign: TextAlign.center,
                                style: AppTextStyles.plusJakartaSans.copyWith(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w300,
                                ),
                              )
                            ],
                          )),
                        ),
                      ),

                      SizedBox(height: 5),
                      Text(
                        'Name',
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Role',
                        textAlign: TextAlign.center,
                        style:  AppTextStyles.plusJakartaSans.copyWith(
                          color: Colors.black,
                          fontSize: 11,
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  ),
                  Icon(Icons.edit,color: Colors.grey,)
                ],
              ),
              SizedBox(height: 40),
              Container(
                width: double.infinity,
                height: 45,
                decoration: ShapeDecoration(
                  color: Color(0xFFD9D9D9),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    contentPadding: EdgeInsets.only(left: 10),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none
                    ),
                    focusedBorder: OutlineInputBorder(
                    )
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 45,
                decoration: ShapeDecoration(
                  color: Color(0xFFD9D9D9),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Phone",
                      contentPadding: EdgeInsets.only(left: 10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none
                      ),
                      focusedBorder: OutlineInputBorder(
                      )
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 45,
                decoration: ShapeDecoration(
                  color: Color(0xFFD9D9D9),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Password",
                      contentPadding: EdgeInsets.only(left: 10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none
                      ),
                      focusedBorder: OutlineInputBorder(
                      )
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(value: true, onChanged: (v){}),
                  SizedBox(width: 5),
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'By clicking submit you agree to our ',
                            style: AppTextStyles.gfsDidotStyle.copyWith(
                              color: Colors.black,
                              fontSize: 12,
                              letterSpacing: 1,
                            ),
                          ),
                          TextSpan(
                            text: 'term',
                            style: AppTextStyles.gfsDidotStyle.copyWith(
                              color: Color(0xFFF91616),
                              fontSize: 12,
                              letterSpacing: 1,
                            ),
                          ),
                          TextSpan(
                            text: 's',
                            style: AppTextStyles.gfsDidotStyle.copyWith(
                              color: Color(0xFF911A1A),
                              fontSize: 12,
                            ),
                          ),
                          TextSpan(
                            text: ' and acknowledge that you have the rights and permissions of all parties involved',
                            style: AppTextStyles.gfsDidotStyle.copyWith(
                              color: Colors.black,
                              fontSize: 12,
                              letterSpacing: 1,
                            ),
                          ),
                          TextSpan(
                            text: '.*',
                            style: AppTextStyles.gfsDidotStyle.copyWith(
                              color: Color(0xFFA81D1D),
                              fontSize: 12,
                              letterSpacing: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 40),
              GestureDetector(
                onTap: (){
                  navigateToPage(context: context, pageName: TeamMemberDashboardScreen());
                },
                child: Container(
                  width: 162,
                  height: 41,
                  decoration: ShapeDecoration(
                    color: Color(0xFF4A4E69),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Login',
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w500,
                        height: 0.12,
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
