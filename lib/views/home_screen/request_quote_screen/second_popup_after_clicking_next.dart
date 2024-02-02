import 'package:flutter/material.dart';
import 'package:taptoparty/views/home_screen/request_quote_screen/request_thanks_screen.dart';

import '../../../themes/app_textstyles.dart';

class SecondPopupAfterClickingNext extends StatefulWidget {
  const SecondPopupAfterClickingNext({super.key});

  @override
  State<SecondPopupAfterClickingNext> createState() =>
      _SecondPopupAfterClickingNextState();
}

class _SecondPopupAfterClickingNextState
    extends State<SecondPopupAfterClickingNext> {
  bool checkBoxValue = false;

  final List<String> titles = [
    "Venues",
    "Caterers",
    "Decorators",
    "Photographers",
    "Event Planners",
    "More",
  ];

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.infinity,
              height: 50,
              padding: const EdgeInsets.only(top: 4, left: 2, bottom: 108),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Color(0xEDF1F0ED)),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text(
                    'Your request has been Submitted',
                    style: AppTextStyles.gfsDidotStyle.copyWith(
                      fontSize: 20,
                      letterSpacing: 0.60,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Are you planning to serving food at this event ',
                    style: AppTextStyles.gfsDidotStyle.copyWith(
                      fontSize: 16,
                      letterSpacing: 0.48,
                    ),
                  ),
                  SizedBox(height: 20),
                  ListView.builder(
                    itemCount: titles.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return StatefulBuilder(
                        builder: (BuildContext context,
                            void Function(void Function()) setState) {
                          return Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Row(
                                  children: [
                                    Checkbox(
                                        value: checkBoxValue,
                                        onChanged: (v) {
                                          setState(() {
                                            checkBoxValue = v!;
                                          });
                                        }),
                                    Text(
                                      titles[index],
                                      style: TextStyle(
                                        color: Color(0xFF4A4E69),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Container(
                                  height: 31,
                                  decoration: ShapeDecoration(
                                    color: Color(0xEDF1F0ED),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1, color: Color(0xFF4A4E69)),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          );
                        },
                      );
                    },
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Checkbox(
                                value: checkBoxValue,
                                onChanged: (v) {
                                  setState(() {
                                    checkBoxValue = v!;
                                  });
                                }),
                            Text(
                              'contact by email',
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                color: Color(0xFF4A4E69),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Checkbox(
                                value: checkBoxValue,
                                onChanged: (v) {
                                  setState(() {
                                    checkBoxValue = v!;
                                  });
                                }),
                            Text(
                              'contact by\nemail or phone ',
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                color: Color(0xFF4A4E69),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 80,
              padding: EdgeInsets.symmetric(horizontal: 15),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Color(0xFF4A4E69),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 117,
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
                      child: Center(
                        child: Text(
                          'Close',
                          style: AppTextStyles.plusJakartaSans.copyWith(
                            color: Color(0xEDF1F0ED),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return RequestThanksScreen();
                          });
                    },
                    child: Container(
                      width: 117,
                      height: 47,
                      decoration: ShapeDecoration(
                        color: Color(0xFFA99F96),
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
                      child: Center(
                        child: Text(
                          'Next',
                          style: AppTextStyles.plusJakartaSans.copyWith(
                            color: Color(0xFF4A4E69),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
