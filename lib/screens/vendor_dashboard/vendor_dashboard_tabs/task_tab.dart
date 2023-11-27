import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taptoparty/themes/app_colors.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/widget/primary_button.dart';

import '../team_session/assign_task.dart';

class TaskTab extends StatefulWidget {
  const TaskTab({super.key});

  @override
  State<TaskTab> createState() => _TaskTabState();
}

class _TaskTabState extends State<TaskTab> {
  final List tabTitle = ["All", "pending", "Inprogress", "Complered"];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(tabTitle.length, (index) {
              return GestureDetector(
                onTap: () {
                  _currentIndex = index;
                  setState(() {});
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: _currentIndex == index
                          ? AppColors.mainColor
                          : Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(7)),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  child: Text(
                    tabTitle[index],
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      fontWeight: FontWeight.w300,color: _currentIndex == index ? AppColors.primaryWhite : AppColors.primaryBlack,
                      fontSize: 14,
                    ),
                  ),
                ),
              );
            }),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 80,
            width: double.infinity,
            color: Color(0xffF1F0ED),
            alignment: Alignment.center,
            child: SizedBox(
              height: 50,
              width: 130.w,
              child: PrimaryButton(title: 'Assign Tasks', onTap: () {
                navigateToPage(context: context, pageName:TaskAssign());
              },),
            ),
          ),
          SizedBox(height: 20,),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 4,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.only(bottom: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffF1F0ED),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 60.h,
                            width: 60,
                            child: Image.asset('images/girls2.png',fit: BoxFit.cover,),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mary Johnson',
                                style: AppTextStyles.plusJakartaSans.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'Task',
                                style: AppTextStyles.plusJakartaSans.copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 14,
                                    color: Colors.grey
                                ),
                              ),
                              Text(
                                'Due Date',
                                style: AppTextStyles.plusJakartaSans.copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 14,
                                    color: Colors.grey
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xFFA99F96),
                            ),
                            child: Center(
                              child: Text(
                                'Complete',
                                style: AppTextStyles.plusJakartaSans.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )

                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
