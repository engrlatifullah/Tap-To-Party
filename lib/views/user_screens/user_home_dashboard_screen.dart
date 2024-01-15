import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/views/user_screens/tabs/planing_event_screen/planing_event_screen.dart';
import 'package:taptoparty/views/user_screens/tabs/event_request_tab/event_request_tab.dart';

class UserHomeDashboardScreen extends StatefulWidget {
  const UserHomeDashboardScreen({super.key});

  @override
  State<UserHomeDashboardScreen> createState() =>
      _UserHomeDashboardScreenState();
}

class _UserHomeDashboardScreenState extends State<UserHomeDashboardScreen> {
  final List<String> tabTitle = [
    "Event Request",
    "Notifications",
    "Group Event"
  ];



  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),
            height: MediaQuery.sizeOf(context).height,
            decoration: ShapeDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.00, -1.00),
                end: Alignment(0, 1),
                colors: [Color(0xFFA99F96), Color(0x524A4E69)],
              ),
              shape: OvalBorder(),
            ),
          ),
          Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(
                    left: 15,
                    right: 15,
                    bottom: 10,
                    top: MediaQuery.of(context).padding.top),
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
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tap to Party ',
                          style: AppTextStyles.gfsDidotStyle.copyWith(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage("images/5.jpg"),
                            ),
                            Text(
                              'Hello Maria!     ',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                        width: 192,
                        height: 140,
                        child: Image.asset(
                            "images/a3b39067dcdafcbdb150ad3f54bcaec4.gif")),
                    GestureDetector(
                      onTap: (){
                        navigateToPage(context: context, pageName: PlaningEventScreen());
                      },
                      child: Container(
                        width: double.infinity,
                        height: 46,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        decoration: ShapeDecoration(
                          color: Color(0xFFA99F96),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Lets Plan an Event',
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                color: Colors.black,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(tabTitle.length, (index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                tabTitle[index],
                                textAlign: TextAlign.center,
                                style: AppTextStyles.gfsDidotStyle.copyWith(
                                  color: Color(0xEDF1F0ED),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 5),
                              Container(
                                width: 96,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 1,
                                      strokeAlign: BorderSide.strokeAlignCenter,
                                      color: currentIndex == index
                                          ? Color(0xEDF1F0ED)
                                          : Colors.transparent,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                    )
                  ],
                ),
              ),
              Expanded(child: EventRequestTab())
            ],
          )
        ],
      ),
    );
  }
}
