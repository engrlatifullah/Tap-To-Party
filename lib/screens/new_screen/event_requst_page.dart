import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';

import 'cost_screens/cost_screen.dart';

class EventRequstPage extends StatelessWidget {
  const EventRequstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F0ED),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image(
                      image: AssetImage('images/newpic.png'),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  ' Create an Event Request',
                  style: AppTextStyles.gfsDidotStyle.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Birthday Party",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.black)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Date & Time",
                            prefixIcon: Icon(Icons.calendar_month_sharp),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            )),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 70,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(child: Icon(Icons.add)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Location",
                            prefixIcon: Icon(Icons.location_on_outlined),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            )),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 70,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(child: Icon(Icons.add)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Party Size",
                            prefixIcon: Icon(Icons.people_alt_outlined),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            )),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 70,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(child: Icon(Icons.add)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    navigateToPage(context: context, pageName: CostScreen());
                  },
                  child: Container(
                    height: 38,
                    width: 220,
                    decoration: BoxDecoration(
                        color: Color(0xff4A4E69),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        'Submit Request',
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Badge(largeSize: 30,backgroundColor: Colors.transparent,
                  label: Icon(Icons.message),
                  child: Container(
                  height: 55,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black)),
                  child: Center(
                    child: Text(
                      ' Notifications from vendors',
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
