import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:taptoparty/views/home_screen/request_quote_screen/send_info_screen.dart';
import 'package:taptoparty/widget/custom_app_bar.dart';

import '../../../themes/app_textstyles.dart';
import '../../../utils/navigation.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                ' Tap to Party ',
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 30),
              Text(
                "What is the Date for the Event?",
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              Card(
                elevation: 4,
                margin: EdgeInsets.zero,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TableCalendar(
                    rowHeight: 40,
                    headerVisible: false,
                    firstDay: DateTime.utc(2010, 10, 16),
                    lastDay: DateTime.utc(2030, 3, 14),
                    focusedDay: DateTime.now(),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(value: false, onChanged: (v) {}),
                  SizedBox(width: 5),
                  Text(
                    'Flexible Date',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 166,
                        height: 47,
                        decoration: ShapeDecoration(
                          color: Color(0xEDF1F0ED),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              strokeAlign: BorderSide.strokeAlignOutside,
                              color: Color(0xFFA99F96),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.navigate_before),
                            SizedBox(width: 20),
                            Text(
                              'Back',
                              style: TextStyle(
                                color: Color(0xFF4A4E69),
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        navigateToPage(
                          context: context,
                          pageName: SendInfoScreen(),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        height: 47,
                        decoration: ShapeDecoration(
                          color: Color(0xFF4A4E69),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              strokeAlign: BorderSide.strokeAlignOutside,
                              color: Color(0xFFA99F96),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Next',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(width: 20),
                            Icon(
                              Icons.navigate_next,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
