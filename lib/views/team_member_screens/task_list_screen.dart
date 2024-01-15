import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/views/team_member_screens/task_details_screen.dart';

import '../../widget/custom_app_bar.dart';

class TaskListScreen extends StatelessWidget {
  const TaskListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Task list Overview',
                style: AppTextStyles.plusJakartaSans.copyWith(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(Icons.arrow_left,color: Colors.grey,),
                  SizedBox(
                    width: 200,
                    height: 20,
                    child: LinearProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.deepOrange.shade600),
                        value: 0.3),
                  ),
                  Icon(Icons.arrow_right,color: Colors.grey,),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 97,
                    height: 21,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '3 tasks in total',
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          color: Colors.black,
                          fontSize: 11,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 97,
                    height: 21,
                    decoration: ShapeDecoration(
                      color: Color(0xFFA99F96),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '2 open tasks',
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          color: Colors.black,
                          fontSize: 11,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 97,
                    height: 21,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '1 task done',
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          color: Colors.black,
                          fontSize: 11,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: 373,
                height: 148,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 21,
                      child: Container(
                        width: 364,
                        height: 38,
                        decoration: BoxDecoration(color: Color(0xEDF1F0ED)),
                      ),
                    ),
                    Positioned(
                      left: 17,
                      top: 39,
                      child: Text(
                        'Task',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w300,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 73,
                      top: 39,
                      child: Text(
                        'Description',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w300,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 158,
                      top: 39,
                      child: Text(
                        'Start date',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w300,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 229,
                      top: 39,
                      child: Text(
                        'Due Date',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w300,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 297,
                      top: 39,
                      child: Text(
                        'Status',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w300,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 6,
                      top: 80,
                      child: Container(
                        width: 61,
                        height: 26,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 0.50, color: Color(0xFF4A4E69)),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 73,
                      top: 80,
                      child: Container(
                        width: 61,
                        height: 26,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 0.50, color: Color(0xFF4A4E69)),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 140,
                      top: 80,
                      child: Container(
                        width: 61,
                        height: 26,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 0.50, color: Color(0xFF4A4E69)),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 207,
                      top: 80,
                      child: Container(
                        width: 61,
                        height: 26,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 0.50, color: Color(0xFF4A4E69)),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 274,
                      top: 80,
                      child: Container(
                        width: 61,
                        height: 26,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 0.50, color: Color(0xFF4A4E69)),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 314,
                      top: 81,
                      child: Container(
                        width: 24,
                        height: 24,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),

                      ),
                    ),
                    Positioned(
                      left: 250,
                      top: 81,
                      child: Container(
                        width: 24,
                        height: 24,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),

                      ),
                    ),
                    Positioned(
                      left: 180,
                      top: 80,
                      child: Container(
                        width: 24,
                        height: 24,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),

                      ),
                    ),
                    Positioned(
                      left: 6,
                      top: 126,
                      child: Container(
                        width: 19,
                        height: 22,
                        decoration: ShapeDecoration(
                          color: Color(0xEDF1F0ED),
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 12,
                      top: 130,
                      child: Text(
                        '+',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w300,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 37,
                      top: 132,
                      child: Text(
                        'Add Task',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w300,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60),
              GestureDetector(
                onTap: (){
                  navigateToPage(context: context, pageName: TaskDetailsScreen());
                },
                child: Container(
                  width: 170,
                  height: 39,
                  decoration: ShapeDecoration(
                    color: Color(0xFF4A4E69),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                   child: Center(
                     child: Text(
                       'Add task',
                       style: AppTextStyles.plusJakartaSans.copyWith(
                         color: Colors.white,
                         fontSize: 14,
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
