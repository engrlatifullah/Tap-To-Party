import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../themes/app_colors.dart';
import '../../../../../../themes/app_textstyles.dart';

class AssignTaskScreen extends StatelessWidget {
  const AssignTaskScreen({super.key});

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
        actions: [Icon(CupertinoIcons.person), SizedBox(width: 10)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
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
              ),
              Text(
                'Assign Tasks  ',
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  color: Color(0xFF4A4E69),
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10),
              ListView.separated(
                itemCount: 3,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: double.infinity,
                    height: 152,
                    padding: EdgeInsets.all(15),
                    decoration: ShapeDecoration(
                      color: Color(0xEDF1F0ED),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignOutside,
                          color: Color(0xFFA99F96),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
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
                              'Assign',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.plusJakartaSans.copyWith(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Task Title',
                          style: AppTextStyles.plusJakartaSans.copyWith(
                            color: Color(0xFF4A4E69),
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Priority Level ',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.plusJakartaSans.copyWith(
                            color: Color(0xFF4A4E69),
                            fontSize: 11,
                          ),
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 20);
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.attachment_outlined),
                  SizedBox(width: 5),
                  Text(
                    ' Attach a file ',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Color(0xFF4A4E69),
                      fontSize: 11,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
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
                          'Save',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.plusJakartaSans.copyWith(
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 35,
                      decoration: ShapeDecoration(
                        color: Color(0xFFA99F96),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Task Overview',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.plusJakartaSans.copyWith(
                            color: Colors.white,
                            fontSize: 11,
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
