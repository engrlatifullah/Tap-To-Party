import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../themes/app_colors.dart';
import '../../../../../../themes/app_textstyles.dart';

class CheckListScreen extends StatefulWidget {
  const CheckListScreen({super.key});

  @override
  State<CheckListScreen> createState() => _CheckListScreenState();
}

class _CheckListScreenState extends State<CheckListScreen> {
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x92F1F0EDED),
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
        child: Container(
          width: double.infinity,
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              color: Colors.white),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 6,
                  width: double.infinity,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      color: Colors.red),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30),
                      Text(
                        "My checklist",
                        style: AppTextStyles.plusJakartaSans.copyWith(
                            fontWeight: FontWeight.w700, fontSize: 20),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Event Engagement Party",
                        style: AppTextStyles.plusJakartaSans.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListView.separated(
                        itemCount: 5,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return StatefulBuilder(
                            builder: (BuildContext context,
                                void Function(void Function()) setState) {
                              return Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 30,
                                    width: 30,
                                    child: Checkbox(
                                        value: checkBoxValue,
                                        onChanged: (v) {
                                          setState(() {
                                            checkBoxValue = v!;
                                          });
                                        }),
                                  ),
                                  SizedBox(width: 20),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Order Decoration",
                                              style: AppTextStyles
                                                  .plusJakartaSans
                                                  .copyWith(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            Spacer(),
                                            Icon(
                                              Icons.keyboard_arrow_up,
                                              color: Colors.grey,
                                            ),
                                            Icon(
                                              Icons.keyboard_arrow_down,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: double.infinity,
                                          height: 50,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText: "Description..",
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide.none),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "Modified . Mahrukh Atif .",
                                          style: AppTextStyles.plusJakartaSans
                                              .copyWith(
                                                  fontSize: 14,
                                                  color: Colors.grey),
                                        ),
                                        Text(
                                          "02 Nov 2023, 18:18 GMT",
                                          style: AppTextStyles.plusJakartaSans
                                              .copyWith(
                                                  fontSize: 14,
                                                  color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              );
                            },
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(height: 10);
                        },
                      )
                    ],
                  ),
                ),
                Divider(),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Icon(Icons.remove_red_eye_outlined, color: Colors.grey),
                      SizedBox(width: 5),
                    
                      Text(
                        "Completed 1 of 7",
                        style: AppTextStyles.plusJakartaSans
                            .copyWith(color: Colors.grey),
                      ),
                      Spacer(),
                      SizedBox(width: 5),
                      Icon(Icons.add),
                    
                      Text(
                        "Add Task",
                        style: AppTextStyles.plusJakartaSans
                      ),
                    ],
                  ),
                    
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
