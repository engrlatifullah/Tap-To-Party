import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_colors.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/views/vendor_screen/vendor_home_dashboard/tabs/post_event_tab/events_screens/events_overview_screen/today_events.dart';
import 'package:taptoparty/views/vendor_screen/vendor_home_dashboard/tabs/post_event_tab/events_screens/events_overview_screen/upcomming_events.dart';

import 'all_events.dart';
import 'create_event_screen.dart';

class EventsOverview extends StatefulWidget {
  const EventsOverview({super.key});

  @override
  State<EventsOverview> createState() => _EventsOverviewState();
}

class _EventsOverviewState extends State<EventsOverview> {
  final List<Map<String, dynamic>> titlesAndNavigation = [
    {"title": "Create Events", "page": CreateEventScreen()},
    {"title": "Upcoming Events", "page": UpComingEvents()},
    {"title": "Todays Events", "page": TodayEvents()},
    {"title": "All  Events", "page": AllEvents()},
    {"title": "Public Events", "page": null}
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
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Events Overview",
                style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 24),
              ),
              SizedBox(height: 25),
              ...List.generate(titlesAndNavigation.length, (index) {
                return GestureDetector(
                  onTap: () {
                    navigateToPage(
                        context: context,
                        pageName: titlesAndNavigation[index]["page"]);
                  },
                  child: Container(
                    height: 60,
                    margin: EdgeInsets.only(bottom: 10),
                    alignment: Alignment.center,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.mainColor),
                    child: Text(
                      titlesAndNavigation[index]["title"],
                      style: AppTextStyles.plusJakartaSans.copyWith(
                          fontSize: 24,
                          fontWeight: FontWeight.w300,
                          color: AppColors.primaryWhite),
                    ),
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
