import 'package:flutter/material.dart';

import '../../../../../../../themes/app_colors.dart';
import '../../../../../../../themes/app_textstyles.dart';

class DetailsOfEventsNearBy extends StatefulWidget {
  const DetailsOfEventsNearBy({super.key});

  @override
  State<DetailsOfEventsNearBy> createState() => _DetailsOfEventsNearByState();
}

class _DetailsOfEventsNearByState extends State<DetailsOfEventsNearBy> {
  final List<String> socialTitles = [
    "Copy Link",
    "WhatsApp",
    "Facebook",
    "Messenger",
    "Twitter",
    "Instagram",
    "Skype",
    "Skype",
    "Message"
  ];
  final List<dynamic> icons = [
    Icons.copy,
    Icons.call,
    Icons.facebook,
    Icons.messenger,
    Icons.messenger,
    Icons.install_desktop,
    Icons.screen_lock_portrait,
    Icons.messenger_outline,
  ];

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
      ),
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Tap To Party",
                          style: AppTextStyles.gfsDidotStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
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
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            height: 41,
                            decoration: ShapeDecoration(
                              color: Color(0xFF4A4E69),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'This Weekend',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.gfsDidotStyle.copyWith(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(width: 5),
                                ImageIcon(
                                  AssetImage("images/Vector (1).png"),
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            height: 41,
                            decoration: ShapeDecoration(
                              color: Color(0xEDF1F0ED),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Music',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.gfsDidotStyle.copyWith(
                                    color: Color(0xFF4A4E69),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(width: 5),
                                ImageIcon(
                                  AssetImage("images/Vector (1).png"),
                                  color: Color(0xFF4A4E69),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'The Rock band Concert',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.gfsDidotStyle.copyWith(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        Icon(Icons.favorite_border),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 159,
                margin: EdgeInsets.symmetric(horizontal: 4),
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/6.jpg"),
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ImageIcon(
                          AssetImage("images/Vector.png"),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Oct 25th 2023',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '7:30 pm - 10:30 pm',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                color: Color(0xFF4A4E69),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.location_on),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'American Airline Center',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '2500 Victory Ave, \nDallas TX 75219',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                color: Color(0xFF4A4E69),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$40-\$80',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.gfsDidotStyle.copyWith(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        Container(
                          width: 135,
                          height: 36,
                          decoration: ShapeDecoration(
                            color: Color(0xFFA99F96),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignOutside,
                                color: Color(0xFF4A4E69),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Get Tickets',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Share with friends',
                      style: TextStyle(
                        color: Color(0xFF110C26),
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    SizedBox(height: 15),
                    GridView.builder(
                      itemCount: icons.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: ShapeDecoration(
                                color: Colors.grey,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x3310A1FF),
                                    blurRadius: 12,
                                    offset: Offset(0, 6),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: Center(
                                child: Icon(icons[index]),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              socialTitles[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF3C3E56),
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            )
                          ],
                        );
                      },
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
