import 'package:flutter/material.dart';

import '../../../themes/app_textstyles.dart';
import '../../../utils/navigation.dart';
import 'create_group_screen.dart';

class InviteFriendsForGroup extends StatefulWidget {
  const InviteFriendsForGroup({super.key});

  @override
  State<InviteFriendsForGroup> createState() => _InviteFriendsForGroupState();
}

class _InviteFriendsForGroupState extends State<InviteFriendsForGroup> {
  bool isChecked = false;
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(color: Color(0xffF1F0ED)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Icon(
                                        Icons.navigate_before,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Icon(
                                      Icons.menu,
                                    ),
                                  ],
                                ),
                                Text(
                                  ' Tap to Party ',
                                  style: AppTextStyles.gfsDidotStyle.copyWith(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(),
                                Text(
                                  'Event Group',
                                  style: AppTextStyles.gfsDidotStyle.copyWith(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Image(
                                  image: AssetImage('images/newpic.png'),
                                )
                              ],
                            ),
                            SizedBox(height: 20),
                            Align(
                              alignment: Alignment.centerRight,
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
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Invite Group by Importing Contacts or Manually or Share a link  ',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF4A4E69),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _currentIndex = 0;
                              });
                            },
                            child: Container(
                              height: 38,
                              width: 139,
                              decoration: BoxDecoration(
                                color: _currentIndex == 0
                                    ? Color(0xff4A4E69)
                                    : Color(0xEDA99F96),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Text(
                                  'Contacts',
                                  style: AppTextStyles.gfsDidotStyle.copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _currentIndex = 1;
                              });
                              navigateToPage(
                                  context: context,
                                  pageName: CreateGroupScreen());
                            },
                            child: Container(
                              height: 38,
                              width: 139,
                              decoration: BoxDecoration(
                                  color: _currentIndex == 1
                                      ? Color(0xff4A4E69)
                                      : Color(0xEDA99F96),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Text(
                                  'Manually ',
                                  style: AppTextStyles.gfsDidotStyle.copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _currentIndex = 2;
                              });
                            },
                            child: Container(
                              height: 38,
                              width: 139,
                              decoration: BoxDecoration(
                                  color: _currentIndex == 2
                                      ? Color(0xff4A4E69)
                                      : Color(0xEDA99F96),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Text(
                                  'Share a Link',
                                  style: AppTextStyles.gfsDidotStyle.copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Stack(
                      children: [
                        ImageCard(
                          image: "images/5.jpg",
                          leftPadding: 30,
                        ),
                        ImageCard(image: "images/9.jpg", leftPadding: 10),
                        ImageCard(image: "images/5.jpg", leftPadding: 30),
                        ImageCard(image: "images/4.jpg", leftPadding: 50),
                        ImageCard(image: "images/3.jpg", leftPadding: 70),
                        ImageCard(image: "images/2.jpg", leftPadding: 90),
                        ImageCard(image: "images/8.jpg", leftPadding: 110),
                        ImageCard(image: "images/5.jpg", leftPadding: 130),
                        ImageCard(image: "images/6.jpg", leftPadding: 150),
                        ImageCard(image: "images/3.jpg", leftPadding: 170),
                        ImageCard(image: "images/4.jpg", leftPadding: 190),
                        Padding(
                          padding: EdgeInsets.only(left: 210),
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.5),
                                    BlendMode.darken),
                                image: AssetImage("images/6.jpg"),
                                fit: BoxFit.fill,
                              ),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1.50, color: Colors.white),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.more_horiz,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Contacts',
                          style: AppTextStyles.gfsDidotStyle.copyWith(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Event group ',
                                style: TextStyle(
                                  color: Color(0xFFA4A4A4),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(
                                text: '37',
                                style: TextStyle(
                                  color: Color(0xFF2C37E1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: '\nmembers.',
                                style: TextStyle(
                                  color: Color(0xFFA4A4A4),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Icon(Icons.search)
                      ],
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 227,
                                height: 46,
                                decoration: ShapeDecoration(
                                  color: Color(0xEDF1F0ED),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Invite Friends',
                                    textAlign: TextAlign.center,
                                    style: AppTextStyles.gfsDidotStyle.copyWith(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              children: [
                                Text(
                                  'Select all',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.gfsDidotStyle.copyWith(
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Checkbox(
                                  value: true,
                                  onChanged: (v) {},
                                  checkColor: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: Colors.black, width: 1),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 70,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black)),
                          child: ListTile(
                            leading: Icon(Icons.person_outline),
                            title: Text(
                              'Name',
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            subtitle: Text(
                              'Phone Number',
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                              ),
                            ),
                            trailing: Icon(
                              Icons.add,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 70,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black)),
                          child: ListTile(
                            leading: Icon(Icons.person_outline),
                            title: Text(
                              'Name',
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            subtitle: Text(
                              'Phone Number',
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                              ),
                            ),
                            trailing: Icon(
                              Icons.add,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 70,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black)),
                          child: ListTile(
                            leading: Icon(Icons.person_outline),
                            title: Text(
                              'Name',
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            subtitle: Text(
                              'Phone Number',
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                              ),
                            ),
                            trailing: Icon(
                              Icons.add,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        Container(
                          width: double.infinity,
                          height: 121,
                          padding: EdgeInsets.all(10),
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Send Message',
                                textAlign: TextAlign.center,
                                style: AppTextStyles.gfsDidotStyle.copyWith(
                                  color: Color(0xFF4A4E69),
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Hi, Lets go for a Picnic.",
                                textAlign: TextAlign.center,
                                style: AppTextStyles.gfsDidotStyle.copyWith(
                                  color: Color(0xFF4A4E69),
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: 175,
                          height: 38,
                          decoration: ShapeDecoration(
                            color: Color(0xFF4A4E69),
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
                          child: Center(
                            child: Text(
                              'Send Invitation',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      "images/Ellipse 49.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  final String image;
  final double leftPadding;
  const ImageCard({super.key, required this.image, this.leftPadding = 0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: leftPadding),
      child: Container(
        width: 30,
        height: 30,
        decoration: ShapeDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.fill,
          ),
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1.50, color: Colors.white),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
