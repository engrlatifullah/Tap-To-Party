import 'package:flutter/material.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/views/vendor_screen/vendor_home_dashboard/tabs/post_event_tab/team_task_home_screens/team_task_overview_screen.dart';

import '../../../../../../themes/app_colors.dart';
import '../../../../../../themes/app_textstyles.dart';
import 'assign_task_screen.dart';

class TeamTaskHome extends StatelessWidget {
  const TeamTaskHome({super.key});

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
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Team Tasks Dashboard',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.gfsDidotStyle.copyWith(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      navigateToPage(
                          context: context, pageName: AssignTaskScreen());
                    },
                    child: Container(
                      width: 110,
                      height: 32,
                      decoration: ShapeDecoration(
                        color: Color(0xEDF1F0ED),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Assign Task',
                          style: AppTextStyles.gfsDidotStyle.copyWith(
                            color: Color(0xFF4A4E69),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      navigateToPage(
                          context: context, pageName: TeamTaskOverview());
                    },
                    child: Container(
                      width: 110,
                      height: 32,
                      decoration: ShapeDecoration(
                        color: Color(0xEDF1F0ED),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Task Overview',
                          style: AppTextStyles.gfsDidotStyle.copyWith(
                            color: Color(0xFF4A4E69),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "What's  Coming!",
                    textAlign: TextAlign.center,
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Image.asset("images/mb animation.gif"),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: 25,
                height: 24,
                decoration: ShapeDecoration(
                  color: Color(0xEDF1F0ED),
                  shape: OvalBorder(),
                ),
                child: Center(
                  child: Text(
                    'MA',
                    style: AppTextStyles.gfsDidotStyle.copyWith(
                      color: Color(0xFF4A4E69),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Text(
                'Add a brief detail about upcoming project',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w300,
                  height: 0,
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: 306,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.2,
                      strokeAlign: BorderSide.strokeAlignCenter,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 306,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.2,
                      strokeAlign: BorderSide.strokeAlignCenter,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 306,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.2,
                      strokeAlign: BorderSide.strokeAlignCenter,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Task Approach',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Add a brief detail about project plan',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w300,
                  height: 0,
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: 306,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.2,
                      strokeAlign: BorderSide.strokeAlignCenter,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 306,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.2,
                      strokeAlign: BorderSide.strokeAlignCenter,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 306,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.2,
                      strokeAlign: BorderSide.strokeAlignCenter,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Container(
                    width: 161,
                    height: 35,
                    decoration: ShapeDecoration(
                      color: Color(0xFF4A4E69),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Create Task',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          color: Colors.white,
                          fontSize: 11,
                        ),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
