import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/views/vendor_screen/vendor_home_dashboard/tabs/post_event_tab/team_management_screens/add_team_memeber_screen.dart';

import '../../../../../../themes/app_colors.dart';
import '../../../../../../themes/app_textstyles.dart';

class TeamManagementScreen extends StatelessWidget {
  const TeamManagementScreen({super.key});

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
        child: Column(
          children: [
            Text(
              'Team Management',
              style: AppTextStyles.gfsDidotStyle.copyWith(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w400,
                height: 0.07,
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    navigateToPage(
                        context: context, pageName: AddTeamMemberScreen());
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
                        'Add Team Member',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          height: 0.14,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
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
                      'Assign Roles',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        height: 0.14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Team Directory',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        height: 0,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: List.generate(4, (index) {
                        return Container(
                          width: 35,
                          height: 28,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/35x28"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      }),
                    ),
                  ],
                ),
                Icon(
                  CupertinoIcons.person_2,
                  color: AppColors.mainColor,
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 47,
              padding: EdgeInsets.symmetric(horizontal: 5),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(side: BorderSide(width: 1)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: ["Member", "Role", "Email", "Action"]
                    .map((e) => Text(
                          e,
                          style: AppTextStyles.gfsDidotStyle.copyWith(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            height: 0.13,
                          ),
                        ))
                    .toList(),
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: double.infinity,
              height: 47,
              padding: EdgeInsets.symmetric(horizontal: 5),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFA99F96)),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mary Jane',
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Color(0xFF4A4E69),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      height: 0.30,
                    ),
                  ),
                  Container(
                    width: 45,
                    height: 15,
                    decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                    child: Center(
                      child: Text(
                        'Manager',
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          height: 0.30,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Mj@gmail.com ',
                    style: AppTextStyles.gfsDidotStyle.copyWith(
                      color: Color(0xFF4A4E69),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      height: 0.30,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 32,
                        height: 18,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1)),
                        ),
                        child: Center(
                          child: Text(
                            'Edit',
                            style: AppTextStyles.gfsDidotStyle.copyWith(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              height: 0.30,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 4),
                      Container(
                        width: 40,
                        height: 18,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1)),
                        ),
                        child: Center(
                          child: Text(
                            'Delete',
                            style: AppTextStyles.gfsDidotStyle.copyWith(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              height: 0.30,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 47,
              padding: EdgeInsets.symmetric(horizontal: 5),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFA99F96)),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 47,
              padding: EdgeInsets.symmetric(horizontal: 5),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFA99F96)),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 47,
              padding: EdgeInsets.symmetric(horizontal: 5),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFA99F96)),
                ),
              ),
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
                  'Save ',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.plusJakartaSans.copyWith(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 161,
                height: 35,
                decoration: ShapeDecoration(
                  color: Color(0xFFA99F96),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Back to Dashboard',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Colors.white,
                      fontSize: 11,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
