import 'package:flutter/material.dart';

import '../../themes/app_colors.dart';
import '../../themes/app_textstyles.dart';

class EventOverViewScreen extends StatefulWidget {
  const EventOverViewScreen({super.key});

  @override
  State<EventOverViewScreen> createState() => _EventOverViewScreenState();
}

class _EventOverViewScreenState extends State<EventOverViewScreen> {

  final List<String> title = [
    "Create Events",
    "Upcoming Events",
    "Today Events",
    "All Events",
    "Community Events"
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
              ...List.generate(title.length, (index) {
                return GestureDetector(
                  onTap: () {

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
                      title[index],
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
