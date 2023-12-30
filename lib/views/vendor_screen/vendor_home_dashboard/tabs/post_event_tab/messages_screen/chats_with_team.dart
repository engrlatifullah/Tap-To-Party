import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../themes/app_colors.dart';
import '../../../../../../themes/app_textstyles.dart';

class ChatWithTeam extends StatelessWidget {
  const ChatWithTeam({super.key});

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
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox.shrink(),
                Text(
                  'Team Chats',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.gfsDidotStyle.copyWith(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                Row(
                  children: [
                    SvgPicture.asset("images/message.svg"),
                    SizedBox(width: 5),
                    Icon(
                      Icons.notifications_none,
                      color: Colors.red,
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(10, (index) => Column(
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      margin: EdgeInsets.only(right: 10),
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/pic1.png"),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Midala',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF0F1828),
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                )),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/2.jpg"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Athalia Putri',
                                    style: AppTextStyles.plusJakartaSans.copyWith(
                                      color: Color(0xFF0F1828),
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    '3m ago',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w600,
                                      height: 0.11,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Did you see my ideas list?',
                                    style: TextStyle(
                                      color: Color(0xFFADB5BD),
                                      fontSize: 14,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w400,
                                      height: 0.10,
                                    ),
                                  ),
                                  Container(
                                    width: 22,
                                    height: 20,
                                    padding: const EdgeInsets.only(
                                        top: 2, left: 6, right: 5, bottom: 2),
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFE94242),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '12',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 9,
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.w700,
                                          height: 0.20,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ))
                    ],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 20);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
