import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../themes/app_textstyles.dart';

class VendorCommunicationScreen extends StatelessWidget {
  const VendorCommunicationScreen({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset("images/message.svg"),
                  SizedBox(width: 5),
                  Icon(
                    Icons.notifications_none,
                    color: Colors.red,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 15),
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
              ),
              SizedBox(height: 20),
              ListView.separated(
                shrinkWrap: true,
                itemCount: 10,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      // navigateToPage(context: context, pageName: ChatsWithClientScreen());
                    },
                    child: Row(
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
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                            Text(
                              'Did you see my ideas list?',
                              style: TextStyle(
                                color: Color(0xFFADB5BD),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w400,
                                height: 0.10,
                              ),
                            )
                          ],
                        ))
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider();
                },
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
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
                    border: UnderlineInputBorder(borderSide: BorderSide.none),
                    focusedBorder:
                        UnderlineInputBorder(borderSide: BorderSide.none),
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
