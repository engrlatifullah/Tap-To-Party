import 'package:flutter/material.dart';
import 'package:taptoparty/utils/navigation.dart';

import '../../../../themes/app_textstyles.dart';
import 'co_host_screen.dart';
import 'my_event_screen.dart';

class EventRequestTab extends StatefulWidget {
  const EventRequestTab({super.key});

  @override
  State<EventRequestTab> createState() => _EventRequestTabState();
}

class _EventRequestTabState extends State<EventRequestTab> {
  final List<Map<String, dynamic>> eventsType = [
    {
      "name": "My Events",
      "page": MyEventScreen(),
    },
    {
      "name": "Co-Hosts",
      "page": CoHostScreen(),
    },
    {
      "name": "Guests",
      "page": null,
    },
    {
      "name": "Photo Gallery",
      "page": null,
    },
    {
      "name": "Invites",
      "page": null,
    },
    {
      "name": "Vendor Communication",
      "page": null,
    },
    {
      "name": "Guest Messages",
      "page": null,
    },
    {
      "name": "Guest Messages",
      "page": null,
    },
    {
      "name": "Expenses",
      "page": null,
    },
    {
      "name": "Checklist\n&\nTask List",
      "page": null,
    },
    {
      "name": "Favorites",
      "page": null,
    },
    {
      "name": "RSVPs",
      "page": null,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20),
          Text(
            'Overview of your Event',
            style: AppTextStyles.gfsDidotStyle.copyWith(
              fontSize: 24,
            ),
          ),
          SizedBox(height: 20),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 15),
            itemCount: eventsType.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
            ),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  navigateToPage(
                      context: context, pageName: eventsType[index]["page"]);
                },
                child: Container(
                  width: 127,
                  height: 104,
                  decoration: ShapeDecoration(
                    color: Color(0xEDF1F0ED),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0xFF4A4E69),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Center(
                    child: Text(
                      eventsType[index]["name"],
                      textAlign: TextAlign.center,
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
