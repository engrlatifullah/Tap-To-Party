import 'package:flutter/material.dart';
import 'package:taptoparty/utils/navigation.dart';

import '../../../../../themes/app_textstyles.dart';
import 'create_guest_list_screen.dart';

class CreateGuestList extends StatefulWidget {
  const CreateGuestList({super.key});

  @override
  State<CreateGuestList> createState() => _CreateGuestListState();
}

class _CreateGuestListState extends State<CreateGuestList> {
  final List<String> titles = [
    "Event Title",
    "Event Date & Time",
    "Location",
    "Event Host"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4A4E69),
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
                  color: Colors.white,
                )),
            Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ],
        ),
        actions: [
          Text(
            ' Tap to Party ',
            style: AppTextStyles.gfsDidotStyle
                .copyWith(fontSize: 20, color: Colors.white),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 100),
            child: Image.asset(
              "images/Ellipse 64.png",
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                SizedBox(height: 50),
                Text(
                  'Guest List Info',
                  style: AppTextStyles.gfsDidotStyle.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerRight,
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
                SizedBox(height: 30),
                ...List.generate(titles.length, (index) {
                  return Container(
                    width: 298,
                    height: 45,
                    margin: EdgeInsets.only(bottom: 15),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.centerLeft,
                    decoration: ShapeDecoration(
                      color: Color(0xEDF1F0ED),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      titles[index],
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  );
                }),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    navigateToPage(
                        context: context, pageName: CreateGuestListScreen());
                  },
                  child: Container(
                    width: 162,
                    height: 38,
                    decoration: ShapeDecoration(
                      color: Color(0xFF4A4E69),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Continue',
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
