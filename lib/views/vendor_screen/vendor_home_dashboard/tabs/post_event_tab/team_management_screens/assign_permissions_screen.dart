import 'package:flutter/material.dart';
import 'package:taptoparty/utils/navigation.dart';

import '../../../../../../themes/app_colors.dart';
import '../../../../../../themes/app_textstyles.dart';
import 'creating_permission_screen.dart';

class AssignPermissionsScreen extends StatefulWidget {
  const AssignPermissionsScreen({super.key});

  @override
  State<AssignPermissionsScreen> createState() =>
      _AssignPermissionsScreenState();
}

class _AssignPermissionsScreenState extends State<AssignPermissionsScreen> {
  bool checkBoxValue = false;
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
          GestureDetector(
            onTap: () {
              navigateToPage(
                  context: context, pageName: CreatingPermissionsScreen());
            },
            child: Container(
              width: 161,
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
                'Create custom permissions',
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  color: Colors.black,
                  fontSize: 12,
                ),
              )),
            ),
          ),
          SizedBox(width: 10)
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
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
              'Manage Permissions for Team Member',
              style: AppTextStyles.plusJakartaSans.copyWith(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10),
            CheckboxListTile(
              contentPadding: EdgeInsets.zero,
              value: checkBoxValue,
              checkboxShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                  side: BorderSide(color: Colors.black)),
              onChanged: (v) {
                setState(() {
                  checkBoxValue = v!;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
              title: Text(
                'Select all',
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            ListView.builder(
              itemCount: 8,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return StatefulBuilder(
                  builder: (BuildContext context,
                      void Function(void Function()) setState) {
                    return CheckboxListTile(
                      contentPadding: EdgeInsets.zero,
                      value: checkBoxValue,
                      checkboxShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                          side: BorderSide(color: Colors.black)),
                      onChanged: (v) {
                        setState(() {
                          checkBoxValue = v!;
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text(
                        'Permission ${index + 1}',
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
            SizedBox(height: 20),
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
                  'Save',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.gfsDidotStyle.copyWith(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
