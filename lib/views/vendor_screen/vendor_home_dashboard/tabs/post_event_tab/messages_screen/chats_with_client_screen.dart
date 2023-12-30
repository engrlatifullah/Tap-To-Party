import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../themes/app_colors.dart';
import '../../../../../../themes/app_textstyles.dart';

class ChatsWithClientScreen extends StatelessWidget {
  const ChatsWithClientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 90,
        title: Text(
          "Clients",
          style: AppTextStyles.gfsDidotStyle.copyWith(
            color: Color(0xFF0F1828),
            fontSize: 18,
          ),
        ),
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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            SvgPicture.asset("images/Vector (4).svg"),
            SizedBox(width: 10),
            Container(
              width: 28,
              height: 28,
              decoration: ShapeDecoration(
                color: Color(0xEDF1F0ED),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: Center(
                child: Icon(Icons.file_upload_outlined),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Container(
                width: double.infinity,
                height: 56,
                padding: EdgeInsets.only(left: 10),
                decoration: ShapeDecoration(
                  color: Color(0xEDF1F0ED),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFA99F96)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Type your message here",
                    suffixIcon: Icon(Icons.mic),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide.none
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [

            ],
          ),
        ),
      ),


    );
  }
}
