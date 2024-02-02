import 'package:flutter/material.dart';

import '../../../themes/app_textstyles.dart';

class GroupChatScreen extends StatelessWidget {
  const GroupChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x92F1F0EDED),
      body: Container(
        width: double.infinity,
        padding:
            EdgeInsets.fromLTRB(15, MediaQuery.of(context).padding.top, 15, 15),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
          "images/Ellipse 51.png",
        ))),
        child: Column(
          children: [
            Row(
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
                Spacer(),
                Text(
                  'Tap to Party',
                  style: AppTextStyles.gfsDidotStyle.copyWith(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: 92.47,
                      height: 91.84,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/4.jpg"),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Mary Johnson',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                        color: Color(0xFF4A4E69),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '+1234 567 0000',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                        color: Color(0xFF4A4E69),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 46,
                          width: 145,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xFFA99F96),
                          ),
                          child: Text(
                            'Chat',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF4A4E69),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          height: 46,
                          width: 145,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0x92F1F0EDED),
                          ),
                          child: Text(
                            'Group',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF4A4E69),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Athalia Putri',
                                        style: AppTextStyles.plusJakartaSans
                                            .copyWith(
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
