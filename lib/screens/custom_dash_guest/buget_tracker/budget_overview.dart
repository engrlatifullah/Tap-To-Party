import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_colors.dart';

import '../../../themes/app_textstyles.dart';

class BudgetOverview extends StatefulWidget {
  const BudgetOverview({super.key});

  @override
  State<BudgetOverview> createState() => _BudgetOverviewState();
}

class _BudgetOverviewState extends State<BudgetOverview> {
  final List names = [
    "Events",
    "Guests",
    "Vendors",
    "Venue",
    "Invites",
    "Expanses",
    "Checklist",
    "Messages",
    "Photos"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          size: 35,
          color: Colors.black,
        ),
        title: Text(
          ' Tap to Party ',
          style: AppTextStyles.gfsDidotStyle.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Hello Maria!     ',
                  style: AppTextStyles.gfsDidotStyle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 282,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Stack(
                  children: [
                    Image(
                      image: AssetImage('images/11.png'),
                    ),
                    Positioned(
                      left: 160,
                      top: 20,
                      child: Image(
                        image: AssetImage('images/12.png'),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GridView.builder(
                shrinkWrap: true,
                itemCount: names.length,
                padding: EdgeInsets.symmetric(horizontal: 20),
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 3,
                    crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 75,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffF1F0ED),
                    ),
                    child: Center(
                      child: Text(
                        names[index],
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
