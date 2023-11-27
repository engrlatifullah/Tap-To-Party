import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_textstyles.dart';

class TaskAssign extends StatelessWidget {
  const TaskAssign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.close),
                    ),
                    Icon(Icons.more_horiz)
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.black,
                          )),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '+ Add to Project',
                          style: AppTextStyles.plusJakartaSans.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Write A task name',
                          style: AppTextStyles.plusJakartaSans.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    )

                  ],
                ),

                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Assignee',
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    Expanded(
                      flex: 3,
                      child: Row(
                        children: [
                          Icon(
                            Icons.person_pin_circle_outlined,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Assigne to',
                            style: AppTextStyles.plusJakartaSans.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Due Date',
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    Expanded(
                        flex: 3,
                        child: Row(
                          children: [
                            Icon(
                              Icons.calendar_month,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'NO dUE date',
                              style: AppTextStyles.plusJakartaSans.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ))
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'priority',
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    Expanded(
                        flex: 3,
                        child: Row(children: [
                      Icon(
                        Icons.flag,
                        size: 30,
                        color: Colors.orange,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Level',
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      )
                    ],))
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Status',
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        'Select Status',
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Decription',
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Attachment',
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    Icon(Icons.add),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Objectives',
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    Icon(Icons.add),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black)),
                    ),

                    SizedBox(
                      height: 30,
                      child: VerticalDivider(
                        thickness: 3,
                        width: 20,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Write Objective',
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          )
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Center(
                    child: Text(
                      'ASK Question or post upadate',
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.grey,
                      ),
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
