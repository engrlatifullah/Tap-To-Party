import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/widget/custom_app_bar.dart';

import 'guest_no_screen.dart';

class RequestQuotePage extends StatefulWidget {
  const RequestQuotePage({super.key});

  @override
  State<RequestQuotePage> createState() => _RequestQuotePageState();
}

class _RequestQuotePageState extends State<RequestQuotePage> {
  bool partyCheckValue = false;
  bool weddingCheckValue = false;
  bool corporateCheckValue = false;
  final List<String> partyTitles = [
    "House Party",
    "Bridal Shower",
    "Baby Shower",
    "Birthday",
    "Graduation",
    "Graduation",
    "Get Together",
    "Dinner",
    "Reception",
    "Kids Party",
    "Holiday Party",
    "School Party",
    "House Warming ",
    "Official Party ",
    "Costume Party ",
    "Other",
  ];
  final List<String> weedingTitles = [
    "Ceremony Only",
    "Reception Only",
    "Ceremony + Reception",
    "Other",
  ];
  final List<String> corporateTitles = [
    "Official Banquet",
    "Meeting",
    "Seminar",
    "Team Launch",
    " Conference",
    " Other",
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
                'What Kind of occasion are you organizing?',
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 48.62,
                padding: EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFF4A4E69),
                ),
                child: Text(
                  'Party',
                  style: AppTextStyles.plusJakartaSans.copyWith(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
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
                          return CheckboxListTile(
                              title: Text(
                                partyTitles[index],
                                style: TextStyle(
                                  color: Color(0xFF4A4E69),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              value: partyCheckValue,
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (v) {
                                setState(() {
                                  partyCheckValue = v!;
                                });
                              });
                        },
                      );
                    },
                    itemCount: partyTitles.length,
                  )),

              //wedding

              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 48.62,
                padding: EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFF4A4E69),
                ),
                child: Text(
                  'Wedding',
                  style: AppTextStyles.plusJakartaSans.copyWith(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
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
                          return CheckboxListTile(
                              title: Text(
                                weedingTitles[index],
                                style: TextStyle(
                                  color: Color(0xFF4A4E69),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              value: weddingCheckValue,
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (v) {
                                setState(() {
                                  weddingCheckValue = v!;
                                });
                              });
                        },
                      );
                    },
                    itemCount: weedingTitles.length,
                  )),

              //Corporate

              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 48.62,
                padding: EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFF4A4E69),
                ),
                child: Text(
                  'Corporate',
                  style: AppTextStyles.plusJakartaSans.copyWith(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
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
                          return CheckboxListTile(
                              title: Text(
                                corporateTitles[index],
                                style: TextStyle(
                                  color: Color(0xFF4A4E69),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              value: corporateCheckValue,
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (v) {
                                setState(() {
                                  corporateCheckValue = v!;
                                });
                              });
                        },
                      );
                    },
                    itemCount: corporateTitles.length,
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
                          pageName: GustNoScreen(),
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
