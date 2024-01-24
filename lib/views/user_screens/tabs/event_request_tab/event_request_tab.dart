import 'package:flutter/material.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/views/user_screens/tabs/event_request_tab/rsvp_screens/rsvp_screen.dart';

import '../../../../themes/app_textstyles.dart';
import '../../../vendor_screen/vendor_home_dashboard/tabs/post_event_tab/favorites_screen/favorites_screen.dart';
import 'chat_with_vendor/vendor_communication_screen/vendor_communication_screen.dart';
import 'check_list_and_task_list_screen/check_list_and_task_list_screen.dart';
import 'co_host_screens/co_host_screen.dart';
import 'event_hub_screen/party_website_screen.dart';
import 'evites_screens/evites_screens.dart';
import 'expenses_screens/expense_screen.dart';
import 'gusts_screens/create_guest_list.dart';
import 'my_event_screen/my_event_screen.dart';

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
      "page": CreateGuestList(),
    },
    {
      "name": 'My Event Hub',
      "page": PartyWebsiteScreen(),
    },
    {
      "name": "Photo Gallery",
      "page": null,
    },
    {
      "name": "Invites",
      "page": EviteScreen(),
    },
    {
      "name": "Vendor Communication",
      "page": VendorCommunicationScreen(),
    },
    {
      "name": "Guest Messages",
      "page": null,
    },
    {
      "name": "Expenses",
      "page": ExpansesScreen(),
    },
    {
      "name": "Checklist\n&\nTask List",
      "page": CheckListAndTaskListScreen(),
    },
    {
      "name": "Favorites",
      "page": FavoriteScreen(),
    },
    {
      "name": "RSVPs",
      "page": RsvpScreen(),
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
