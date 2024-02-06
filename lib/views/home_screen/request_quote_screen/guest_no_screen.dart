import 'package:flutter/material.dart';

import '../../../themes/app_textstyles.dart';
import '../../../utils/navigation.dart';
import '../../../widget/custom_app_bar.dart';
import 'calander_screen.dart';

class GustNoScreen extends StatefulWidget {
  const GustNoScreen({super.key});

  @override
  State<GustNoScreen> createState() => _GustNoScreenState();
}

class _GustNoScreenState extends State<GustNoScreen> {
  bool checkValue = false;
  final List<String> noOfGuest = [
    "20 to 30",
    "30 to 40",
    "40 to 50",
    "50 to 60",
    "60 to 70",
    "80 to 90",
    "100",
    "150",
    "200",
    "Other",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(
                  ' Tap to Party ',
                  style: AppTextStyles.gfsDidotStyle.copyWith(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "How many guests are you inviting?",
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color(0xFFA99F96),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x26000000),
                        blurRadius: 24,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return StatefulBuilder(
                        builder: (BuildContext context,
                            void Function(void Function()) setState) {
                          return index != noOfGuest.length - 1
                              ? CheckboxListTile(
                                  contentPadding: EdgeInsets.zero,
                                  title: Text(
                                    noOfGuest[index],
                                    style: TextStyle(
                                      color: Color(0xFF4A4E69),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  value: checkValue,
                                  controlAffinity:
                                      ListTileControlAffinity.leading,
                                  onChanged: (v) {
                                    setState(() {
                                      checkValue = v!;
                                    });
                                  })
                              : Row(
                                  children: [
                                    Checkbox(
                                        value: checkValue,
                                        onChanged: (v) {
                                          setState(() {
                                            checkValue = v!;
                                          });
                                        }),
                                    Text(
                                      noOfGuest[index],
                                      style: TextStyle(
                                        color: Color(0xFF4A4E69),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Container(
                                      width: 94,
                                      height: 37,
                                      decoration:
                                          BoxDecoration(color: Colors.white),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: UnderlineInputBorder(
                                                borderSide: BorderSide.none)),
                                      ),
                                    )
                                  ],
                                );
                        },
                      );
                    },
                    itemCount: noOfGuest.length,
                  )),
              SizedBox(height: 30),
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
                          pageName: CalendarScreen(),
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
