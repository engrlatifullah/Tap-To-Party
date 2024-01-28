import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_textstyles.dart';

class AddPeopleScreen extends StatelessWidget {
  const AddPeopleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: ShapeDecoration(
          color: Color(0xEDF1F0ED),
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Invite people to Picnic Plan',
              textAlign: TextAlign.center,
              style: AppTextStyles.plusJakartaSans.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'To:',
                  style: AppTextStyles.gfsDidotStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                Text(
                  'Add from Contacts',
                  style: AppTextStyles.gfsDidotStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 75,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(side: BorderSide(width: 1)),
              ),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    hintText: "email address",
                    border: UnderlineInputBorder(borderSide: BorderSide.none)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.link,
                      color: Color(0xFF1170AF),
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Copy invite link',
                      style: TextStyle(
                        color: Color(0xFF1170AF),
                        fontSize: 14,
                        fontFamily: 'GFS Didot',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 65,
                  height: 23,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(side: BorderSide(width: 1)),
                  ),
                  child: Center(
                    child: Text(
                      'Send',
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
