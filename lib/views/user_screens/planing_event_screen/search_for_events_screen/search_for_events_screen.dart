import 'package:flutter/material.dart';
import 'package:taptoparty/views/user_screens/planing_event_screen/search_for_events_screen/tabs/events_tab.dart';
import 'package:taptoparty/views/user_screens/planing_event_screen/search_for_events_screen/tabs/vendors_tab.dart';
import 'package:taptoparty/views/user_screens/planing_event_screen/search_for_events_screen/tabs/venues_screen.dart';

import '../../../../../themes/app_colors.dart';
import '../../../../../themes/app_textstyles.dart';

class SearchForEventScreen extends StatefulWidget {
  const SearchForEventScreen({super.key});

  @override
  State<SearchForEventScreen> createState() => _SearchForEventScreenState();
}

class _SearchForEventScreenState extends State<SearchForEventScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 90,
        centerTitle: true,
        title: Text(
          'Tap to Party',
          style: AppTextStyles.gfsDidotStyle.copyWith(
            color: Colors.black,
            fontSize: 20,
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
                  color: Color(0xff4A4E69)),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      currentIndex = 0;
                      setState(() {});
                    },
                    child: Column(
                      children: [
                        Text(
                          "Events",
                          style: AppTextStyles.plusJakartaSans.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        currentIndex == 0
                            ? Container(
                                height: 1,
                                width: 80,
                                color: AppColors.primaryBlack,
                              )
                            : SizedBox(),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      currentIndex = 1;
                      setState(() {});
                    },
                    child: Column(
                      children: [
                        Text(
                          "Vendors",
                          style: AppTextStyles.plusJakartaSans.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        currentIndex == 1
                            ? Container(
                                height: 1,
                                width: 80,
                                color: AppColors.primaryBlack,
                              )
                            : SizedBox(),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      currentIndex = 2;
                      setState(() {});
                    },
                    child: Column(
                      children: [
                        Text(
                          "Venues ",
                          style: AppTextStyles.plusJakartaSans.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        currentIndex == 2
                            ? Container(
                                height: 1,
                                width: 80,
                                color: AppColors.primaryBlack,
                              )
                            : SizedBox(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            currentIndex == 0
                ? EventTabScreen()
                : currentIndex == 1
                    ? VendorsTabScreen()
                    : VenueTabScreen(),
          ],
        ),
      ),
    );
  }
}
