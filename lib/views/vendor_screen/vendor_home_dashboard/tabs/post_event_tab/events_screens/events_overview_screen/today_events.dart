import 'package:flutter/material.dart';

import '../../../../../../../themes/app_colors.dart';
import '../../../../../../../themes/app_textstyles.dart';
import '../../../../../../../widget/primary_button.dart';

class TodayEvents extends StatelessWidget {
  const TodayEvents({super.key});

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
                  color: AppColors.mainColor),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Upcoming Events",
                style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 24),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Upcoming",
                    style: AppTextStyles.gfsDidotStyle
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "Date/Time",
                    style: AppTextStyles.gfsDidotStyle
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              SizedBox(height: 30),
              ...List.generate(6, (index) {
                return Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey.shade200),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Alice’s Birthday",
                        style: AppTextStyles.plusJakartaSans.copyWith(
                            fontSize: 14, fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 30,
                        width: 120,
                        child: PrimaryButton(
                          title: "Date/Time",
                          onTap: () {},
                        ),
                      )
                    ],
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
