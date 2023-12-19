import 'package:flutter/material.dart';
import 'package:taptoparty/utils/navigation.dart';

import '../../../../../../themes/app_colors.dart';
import '../../../../../../themes/app_textstyles.dart';
import 'add_team_member_manually.dart';

class AddTeamMemberScreen extends StatelessWidget {
  const AddTeamMemberScreen({super.key});

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
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    navigateToPage(
                        context: context, pageName: AddTeamMemberManually());
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
                        'Add Manually',
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Color(0xFF4A4E69),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 0.21,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
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
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 36,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                decoration: ShapeDecoration(
                  color: Color(0xEDF1F0ED),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search"),
                ),
              ),
              SizedBox(height: 20),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      width: 48,
                      height: 48,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/3.jpg"),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    title: Text(
                      'Athalia Putri',
                      style: TextStyle(
                        color: Color(0xFF0F1828),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        height: 0.09,
                      ),
                    ),
                    trailing: Icon(Icons.add),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    color: Color(0xFFEDEDED),
                  );
                },
                itemCount: 5,
              ),
              SizedBox(height: 30),
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
                    'Add ',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      height: 0,
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
