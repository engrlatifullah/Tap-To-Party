import 'package:flutter/material.dart';

import '../../../../../../themes/app_colors.dart';
import '../../../../../../themes/app_textstyles.dart';

class AddTeamMemberManually extends StatefulWidget {
  const AddTeamMemberManually({super.key});

  @override
  State<AddTeamMemberManually> createState() => _AddTeamMemberManuallyState();
}

class _AddTeamMemberManuallyState extends State<AddTeamMemberManually> {
  String? value;
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
                  color: AppColors.mainColor),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Team Management',
                    style: AppTextStyles.gfsDidotStyle.copyWith(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      height: 0.21,
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(Icons.navigate_next_rounded),
                  SizedBox(width: 5),
                  Text(
                    'Adding a Team Member',
                    style: AppTextStyles.gfsDidotStyle.copyWith(
                      color: Color(0xFF0F1828),
                      fontSize: 12,
                      fontFamily: 'GFS Didot',
                      fontWeight: FontWeight.w400,
                      height: 0.21,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Enter Information',
                  style: AppTextStyles.plusJakartaSans.copyWith(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    height: 0.13,
                  ),
                ),
              ),
              SizedBox(height: 30),
              //firs name
              Text(
                'First Name',
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 50,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(side: BorderSide(width: 1)),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none)),
                ),
              ),
              SizedBox(height: 20),

              Text(
                'Last Name',
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 50,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(side: BorderSide(width: 1)),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none)),
                ),
              ),
              SizedBox(height: 20),

              Text(
                'Mobile Phone Number',
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 50,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(side: BorderSide(width: 1)),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none)),
                ),
              ),
              SizedBox(height: 20),

              Text(
                'Email Address',
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 50,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(side: BorderSide(width: 1)),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none)),
                ),
              ),
              SizedBox(height: 20),

              Text(
                'Team Member Role',
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(side: BorderSide(width: 1)),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    items: ["Admin", "Moderator"].map((e) {
                      return DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      );
                    }).toList(),
                    onChanged: (v) {},
                    value: value,
                    isExpanded: true,
                    hint: Text("Select Member Role"),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 35,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Back',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.plusJakartaSans.copyWith(
                            color: Color(0xFF4A4E69),
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 35,
                      decoration: ShapeDecoration(
                        color: Color(0xFF4A4E69),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Next',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.plusJakartaSans.copyWith(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
