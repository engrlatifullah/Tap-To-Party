import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/views/team_member_screens/task_checklist_screen.dart';
import 'package:taptoparty/views/team_member_screens/task_list_screen.dart';

import 'agenda_screen.dart';
import 'chat_Screen.dart';
import 'event_overview_screen.dart';
import 'team_member_profile_screen.dart';

class TeamMemberDashboardScreen extends StatefulWidget {
  const TeamMemberDashboardScreen({super.key});

  @override
  State<TeamMemberDashboardScreen> createState() =>
      _TeamMemberDashboardScreenState();
}

class _TeamMemberDashboardScreenState extends State<TeamMemberDashboardScreen> {
  final List<Map<String, dynamic>> names = [
    {
      "name": "My Profile",
      "page": null,
    },
    {
      "name": "Agenda",
      "page": AgendaScreen(),
    },
    {
      "name": "Tasks",
      "page": TaskListScreen(),
    },
    {
      "name": "Checklist",
      "page": TaskCheckListScreen(),
    },
    {
      "name": "Team",
      "page": null,
    },
    {
      "name": "Messages\nChats",
      "page": ChatScreen(),
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFA99F96),
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
          centerTitle: true,
          title: Text(
            'My Dashboard',
            textAlign: TextAlign.center,
            style: AppTextStyles.gfsDidotStyle.copyWith(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          actions: [
            Icon(Icons.notifications_none),
            SizedBox(width: 10),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 75.89,
                  height: 73.47,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/4.jpg"),
                      fit: BoxFit.cover,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Mary Johnson',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.gfsDidotStyle.copyWith(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  '+1234 567 0000',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF4A4E69),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                SizedBox(height: 20),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: names.length,
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        navigateToPage(
                            context: context, pageName: names[index]["page"]);
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
                            names[index]["name"],
                            textAlign: TextAlign.center,
                            style: AppTextStyles.plusJakartaSans.copyWith(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    navigateToPage(
                        context: context, pageName: EventOverViewScreen());
                  },
                  child: Container(
                    width: 160,
                    height: 140,
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
                        "Events",
                        textAlign: TextAlign.center,
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ));
  }
}
