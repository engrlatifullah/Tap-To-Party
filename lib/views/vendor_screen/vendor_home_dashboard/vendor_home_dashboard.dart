import 'package:flutter/material.dart';
import 'package:taptoparty/views/vendor_screen/vendor_home_dashboard/tabs/post_event_tab/post_event_tab.dart';

import '../../../../themes/app_textstyles.dart';

class VendorHomeDashboardScreen extends StatefulWidget {
  const VendorHomeDashboardScreen({super.key});

  @override
  State<VendorHomeDashboardScreen> createState() =>
      _VendorHomeDashboardScreenState();
}

class _VendorHomeDashboardScreenState extends State<VendorHomeDashboardScreen> {
  int _currentIndex = 0;
  final tabTitle = [
    "Post Event",
    "Share Event",
    "Calendar",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4A4E69),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top,
                  bottom: 20,
                  right: 20,
                  left: 20),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Icon(
                          Icons.navigate_before,
                          color: Colors.black,
                        ),
                      ),
                      Icon(
                        Icons.menu,
                        color: Colors.black,
                      ),
                      Spacer(),
                      Text(
                        ' Tap to Party ',
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.notifications,
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                  SizedBox(height: 20),
                  Image.asset("images/assa.gif"),
                  SizedBox(height: 20),
                  Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xFF4a4e69),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(width: 20),
                        Text(
                          "Manage your Events",
                          style: AppTextStyles.plusJakartaSans
                              .copyWith(fontSize: 16, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(tabTitle.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              tabTitle[index],
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                  fontSize: 17, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(height: 5),
                            Container(
                              height: 2,
                              width: MediaQuery.sizeOf(context).width * 0.2,
                              color: _currentIndex == index
                                  ? Colors.white
                                  : Colors.transparent,
                            )
                          ],
                        ),
                      );
                    }),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            PostEventTab(),
          ],
        ),
      ),
    );
  }
}
