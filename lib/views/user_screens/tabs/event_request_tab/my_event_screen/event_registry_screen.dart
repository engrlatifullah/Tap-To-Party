import 'package:flutter/material.dart';
import 'package:taptoparty/views/user_screens/tabs/event_request_tab/my_event_screen/guest_journal_screen.dart';

import '../../../../../themes/app_textstyles.dart';
import '../../../../../utils/navigation.dart';

class EventRegistryScreen extends StatelessWidget {
  const EventRegistryScreen({super.key});

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
                )),
            Icon(
              Icons.menu,
            ),
          ],
        ),
        actions: [
          Text(
            ' Tap to Party ',
            style: AppTextStyles.gfsDidotStyle.copyWith(
              fontSize: 20,
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Text(
                    'Back to dashboard',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.gfsDidotStyle.copyWith(
                      color: Color(0xFF4A4E69),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Event Registry',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.gfsDidotStyle.copyWith(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Icon(Icons.edit),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Welcome to the Registry Page - where you can curate a personalized wishlist for your special event. Easily gather and manage your desired items, making it convenient for guests to contribute and celebrate with you."',
                textAlign: TextAlign.center,
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomCards(),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 30,
                        child: Switch(
                          trackOutlineWidth: MaterialStateProperty.all(1),
                          value: false,
                          onChanged: (v) {},
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomCards(),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 30,
                        child: Switch(
                          trackOutlineWidth: MaterialStateProperty.all(1),
                          value: false,
                          onChanged: (v) {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomCards(),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 30,
                        child: Switch(
                          trackOutlineWidth: MaterialStateProperty.all(1),
                          value: false,
                          onChanged: (v) {},
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomCards(),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 30,
                        child: Switch(
                          trackOutlineWidth: MaterialStateProperty.all(1),
                          value: false,
                          onChanged: (v) {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomCards(),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 30,
                        child: Switch(
                          trackOutlineWidth: MaterialStateProperty.all(1),
                          value: false,
                          onChanged: (v) {},
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomCards(),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 30,
                        child: Switch(
                          trackOutlineWidth: MaterialStateProperty.all(1),
                          value: false,
                          onChanged: (v) {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 50),
              GestureDetector(
                onTap: () {
                  navigateToPage(
                    context: context,
                    pageName: GuestJournalScreen(),
                  );
                },
                child: Center(
                  child: Container(
                    width: 162,
                    height: 49,
                    decoration: ShapeDecoration(
                      color: Color(0xFF4A4E69),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Save',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCards extends StatelessWidget {
  const CustomCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 151,
      height: 81,
      decoration: ShapeDecoration(
        image: DecorationImage(
            image: AssetImage("images/PotteryBarn_logo_PNG1 1.png")),
        color: Colors.white,
        shape: RoundedRectangleBorder(side: BorderSide(width: 1)),
      ),
    );
  }
}
