import 'package:flutter/material.dart';

import '../../../../../../themes/app_colors.dart';
import '../../../../../../themes/app_textstyles.dart';
import '../../../../../../widget/primary_button.dart';

class AddClientScreen extends StatelessWidget {
  const AddClientScreen({super.key});

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
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              textAlign: TextAlign.center,
              style: AppTextStyles.plusJakartaSans.copyWith(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 254,
              height: 53.55,
              decoration: ShapeDecoration(
                color: Color(0xEDF1F0ED),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Phone',
              textAlign: TextAlign.center,
              style: AppTextStyles.plusJakartaSans.copyWith(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 254,
              height: 53.55,
              decoration: ShapeDecoration(
                color: Color(0xEDF1F0ED),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            ),
            SizedBox(height: 15),



            Text(
              'Email',
              textAlign: TextAlign.center,
              style: AppTextStyles.plusJakartaSans.copyWith(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 254,
              height: 53.55,
              decoration: ShapeDecoration(
                color: Color(0xEDF1F0ED),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            ),
            SizedBox(height: 15),


            Text(
              'Upcoming Event',
              textAlign: TextAlign.center,
              style: AppTextStyles.plusJakartaSans.copyWith(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 254,
              height: 53.55,
              decoration: ShapeDecoration(
                color: Color(0xEDF1F0ED),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            ),

            SizedBox(height: 30),
            Center(
              child: SizedBox(
                width: 120,
                child: PrimaryButton(title: 'Save', onTap: () {}),
              ),
            )
          ],
        ),
      ),
    );
  }
}
