import 'package:flutter/material.dart';

import '../../../../../../themes/app_colors.dart';
import '../../../../../../themes/app_textstyles.dart';

class TeamTaskOverview extends StatelessWidget {
  const TeamTaskOverview({super.key});

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
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Team Task Overview ',
                  style: AppTextStyles.gfsDidotStyle.copyWith(
                    color: Color(0xFF4A4E69),
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 26,
                        height: 30,
                        decoration: ShapeDecoration(
                          color: Color(0xFFC13327),
                          shape: OvalBorder(),
                        ),
                        child: Center(
                          child: Text(
                            'MA',
                            style: AppTextStyles.gfsDidotStyle.copyWith(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Assignee',
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Calendar',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(Icons.calendar_month)
                    ],
                  ),
                  SizedBox(height: 10),
                  // Table(
                  //   children: [
                  //     TableRow(
                  //       children:
                  //     )
                  //   ],
                  // )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
