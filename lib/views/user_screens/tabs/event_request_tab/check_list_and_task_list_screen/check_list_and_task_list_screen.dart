import 'package:flutter/material.dart';

import '../../../../../themes/app_textstyles.dart';

class CheckListAndTaskListScreen extends StatefulWidget {
  const CheckListAndTaskListScreen({super.key});

  @override
  State<CheckListAndTaskListScreen> createState() =>
      _CheckListAndTaskListScreenState();
}

class _CheckListAndTaskListScreenState
    extends State<CheckListAndTaskListScreen> {
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
                )),
            Icon(
              Icons.menu,
            ),
          ],
        ),
        actions: [
          Text(
            ' Tap to Party ',
            style: AppTextStyles.gfsDidotStyle.copyWith(
              fontSize: 20,
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'My Checklist',
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Back to dashboard',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                        color: Color(0xFF4A4E69),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                height: 6,
                width: double.infinity,
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    color: Colors.red),
              ),
              Container(
                width: double.infinity,
                color: Colors.black87,
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Text(
                      "My checklist",
                      style: AppTextStyles.plusJakartaSans.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                    SizedBox(height: 20),
                    Divider(),
                    SizedBox(height: 20),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                  "title",
                                                  style: AppTextStyles
                                                      .plusJakartaSans
                                                      .copyWith(
                                                    color: Colors.grey.shade500,
                                                  ),
                                                ),
                                                Spacer(),
                                                Icon(
                                                  Icons.keyboard_arrow_up,
                                                  color: Colors.grey,
                                                ),
                                                Icon(
                                                  Icons.keyboard_arrow_down,
                                                  color: Colors.white,
                                                ),
                                                Icon(
                                                  Icons.menu,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: double.infinity,
                                              height: 50,
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  hintStyle: TextStyle(
                                                      color: Colors.white),
                                                  hintText: "Description..",
                                                  border: OutlineInputBorder(
                                                      borderSide:
                                                          BorderSide.none),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "Completed . Mahrukh Atif .",
                                              style: AppTextStyles
                                                  .plusJakartaSans
                                                  .copyWith(
                                                      fontSize: 14,
                                                      color: Colors.grey),
                                            ),
                                            Text(
                                              "02 Nov 2023, 18:18 GMT",
                                              style: AppTextStyles
                                                  .plusJakartaSans
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
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return SizedBox(height: 10);
                            },
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Expanded(
                                  child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Type Something",
                                  hintStyle:
                                      TextStyle(color: Colors.grey.shade500),
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide.none),
                                ),
                              )),
                              Spacer(),
                              Icon(
                                Icons.keyboard_arrow_up,
                                color: Colors.grey,
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.menu,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          Divider(),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(Icons.remove_red_eye_outlined,
                                  color: Colors.grey),
                              SizedBox(width: 5),
                              Text(
                                "Completed 1 of 7",
                                style: AppTextStyles.plusJakartaSans
                                    .copyWith(color: Colors.grey),
                              ),
                              Spacer(),
                              SizedBox(width: 5),
                              Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              Text("Add Task",
                                  style: AppTextStyles.plusJakartaSans
                                      .copyWith(color: Colors.white)),
                            ],
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
