import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_colors.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/views/group_activity/create_pol.dart';
import 'package:taptoparty/views/group_activity/view_pol.dart';
import 'package:taptoparty/views/group_activity/who_is_in.dart';

import '../../../../../themes/app_textstyles.dart';
import 'cost_details_screen.dart';
import 'date_suggestion_screen.dart';
import 'group_chat_screen.dart';
import 'invite_friends_for_group.dart';

class GroupActivityScreen extends StatelessWidget {
  const GroupActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
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
                        )),
                    Icon(
                      Icons.menu,
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Text(
                          ' Tap to Party ',
                          style: AppTextStyles.gfsDidotStyle.copyWith(
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10),
                        CircleAvatar(
                          backgroundImage: AssetImage("images/5.jpg"),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(
                        width: 120,
                        height: 120,
                        child: Image.asset(
                          "images/b59a97ffbf41eed634368828903b3373.gif",
                          fit: BoxFit.cover,
                        )),
                    SizedBox(width: 5),
                    Text(
                      'Group Event',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                        color: Color(0xFF4A4E69),
                        fontSize: 24,
                      ),
                    )
                  ],
                ),
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
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF1F0ED)),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_today,
                                  color: AppColors.mainColor,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Oct 10th',
                                      style:
                                          AppTextStyles.gfsDidotStyle.copyWith(
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.mainColor,
                                        fontSize: 17,
                                      ),
                                    ),
                                    Text(
                                      '10:30 AM',
                                      style:
                                          AppTextStyles.gfsDidotStyle.copyWith(
                                        fontSize: 14,
                                        color: AppColors.mainColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Lake Lavon',
                                  style: AppTextStyles.gfsDidotStyle.copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            navigateToPage(
                              context: context,
                              pageName: WhoIsInScreen(),
                            );
                          },
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage('images/personpicicon.png'),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Who’s In',
                                style: AppTextStyles.gfsDidotStyle.copyWith(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Text(
                                    '10 IN -',
                                    style: AppTextStyles.gfsDidotStyle.copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        color: Color(0xff4CAF50)),
                                  ),
                                  Text(
                                    '6 NOT going -',
                                    style: AppTextStyles.gfsDidotStyle.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffE53935)),
                                  ),
                                  Text(
                                    ' 4 Maybe',
                                    style: AppTextStyles.gfsDidotStyle.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff4285F4)),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 60,
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: Image(
                                    image: AssetImage('images/clip1.png'),
                                    fit: BoxFit.cover,
                                  )),
                              Positioned(
                                  left: 40,
                                  child: SizedBox(
                                    height: 40,
                                    width: 40,
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('images/clip2.png'),
                                    ),
                                  )),
                              Positioned(
                                  left: 80,
                                  child: SizedBox(
                                    height: 40,
                                    width: 40,
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('images/clip3.png'),
                                    ),
                                  )),
                              Positioned(
                                  left: 120,
                                  child: SizedBox(
                                    height: 40,
                                    width: 40,
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('images/clip4.png'),
                                    ),
                                  )),
                              Positioned(
                                  left: 160,
                                  child: SizedBox(
                                    height: 40,
                                    width: 40,
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('images/clip5.png'),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            navigateToPage(
                              context: context,
                              pageName: InviteFriendsForGroup(),
                            );
                          },
                          child: Container(
                            height: 46,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                'Invite Friends',
                                style: AppTextStyles.gfsDidotStyle.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 46,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    child: Container(
                                      color: Color(0xffF1F0ED),
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              height: 60,
                                              width: 336,
                                              color: Color(0xff34A853),
                                              child: Center(
                                                child: Text(
                                                  'Yes',
                                                  style: AppTextStyles
                                                      .gfsDidotStyle
                                                      .copyWith(
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              height: 60,
                                              width: 336,
                                              color: Color(0xff17A1FA),
                                              child: Center(
                                                child: Text(
                                                  'May be',
                                                  style: AppTextStyles
                                                      .gfsDidotStyle
                                                      .copyWith(
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              height: 60,
                                              width: 336,
                                              color: Color(0xffEA4335),
                                              child: Center(
                                                child: Text(
                                                  "Cant't",
                                                  style: AppTextStyles
                                                      .gfsDidotStyle
                                                      .copyWith(
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 70),
                                  child: Text(
                                    'Are You Joining ',
                                    style: AppTextStyles.gfsDidotStyle.copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.black,
                                  size: 30,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            navigateToPage(
                              context: context,
                              pageName: DateSuggestionScreen(),
                            );
                          },
                          child: Container(
                            height: 46,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: GestureDetector(
                              onTap: () {},
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 80),
                                    child: Text(
                                      'Decide a Date ',
                                      style:
                                          AppTextStyles.gfsDidotStyle.copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.black,
                                    size: 30,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Float Ideas And Ask freinds to decide',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.gfsDidotStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Ideas',
                          style: AppTextStyles.gfsDidotStyle.copyWith(
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            navigateToPage(
                                context: context, pageName: ViewPolScreen());
                          },
                          child: Container(
                            width: 144,
                            height: 53,
                            decoration: ShapeDecoration(
                              color: Color(0xEDA99F96),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
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
                                ' View Poll',
                                style: AppTextStyles.gfsDidotStyle.copyWith(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            navigateToPage(
                                context: context, pageName: CreatePolScreen());
                          },
                          child: Container(
                            width: 144,
                            height: 53,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 0.50,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x3F000000),
                                  blurRadius: 4,
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Center(
                              child: Text(
                                'Create',
                                textAlign: TextAlign.center,
                                style: AppTextStyles.gfsDidotStyle.copyWith(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Costs',
                          style: AppTextStyles.gfsDidotStyle.copyWith(
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 144,
                          height: 53,
                          decoration: ShapeDecoration(
                            color: Color(0xEDA99F96),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
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
                              'Total Bill',
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            navigateToPage(
                                context: context,
                                pageName: CostDetailsScreen());
                          },
                          child: Container(
                            width: 144,
                            height: 53,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 0.50,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x3F000000),
                                  blurRadius: 4,
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Center(
                              child: Text(
                                'View Detail',
                                textAlign: TextAlign.center,
                                style: AppTextStyles.gfsDidotStyle.copyWith(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Group Chat',
                          style: AppTextStyles.gfsDidotStyle.copyWith(
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            navigateToPage(
                                context: context, pageName: GroupChatScreen());
                          },
                          child: Container(
                            width: 144,
                            height: 53,
                            decoration: ShapeDecoration(
                              color: Color(0xEDA99F96),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
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
                                ' View Chat',
                                style: AppTextStyles.gfsDidotStyle.copyWith(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 144,
                          height: 53,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 0.50,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Center(
                            child: Text(
                              'Notifications',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Payments',
                          style: AppTextStyles.gfsDidotStyle.copyWith(
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 144,
                          height: 53,
                          decoration: ShapeDecoration(
                            color: Color(0xEDA99F96),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
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
                              'Pay',
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 144,
                          height: 53,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 0.50,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Center(
                            child: Text(
                              'Request',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
