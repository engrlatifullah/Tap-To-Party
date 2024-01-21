import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_textstyles.dart';

class AddCoHost extends StatelessWidget {
  const AddCoHost({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                SizedBox(width: 5),
                Text(
                  'Add Manually',
                  style: TextStyle(
                    color: Color(0xFFA99F96),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Name',
              textAlign: TextAlign.center,
              style: AppTextStyles.plusJakartaSans.copyWith(
                color: Color(0xFF4A4E69),
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 279,
              height: 49,
              decoration: ShapeDecoration(
                color: Color(0xEDF1F0ED),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Contact Number',
              textAlign: TextAlign.center,
              style: AppTextStyles.plusJakartaSans.copyWith(
                color: Color(0xFF4A4E69),
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 279,
              height: 49,
              decoration: ShapeDecoration(
                color: Color(0xEDF1F0ED),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Email',
              textAlign: TextAlign.center,
              style: AppTextStyles.plusJakartaSans.copyWith(
                color: Color(0xFF4A4E69),
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 279,
              height: 49,
              decoration: ShapeDecoration(
                color: Color(0xEDF1F0ED),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
