import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/views/home_screen/request_quote_screen/second_popup_after_clicking_next.dart';

class SubmittingRequestScreen extends StatefulWidget {
  const SubmittingRequestScreen({super.key});

  @override
  State<SubmittingRequestScreen> createState() =>
      _SubmittingRequestScreenState();
}

class _SubmittingRequestScreenState extends State<SubmittingRequestScreen> {
  bool checkBoxValue = false;
  final List<String> titles = [
    "Yes, And I would like:",
    "to provide my own food",
    "the caterer will provide food",
    "the venue provides food",
    "Not sure yet"
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
                          return CheckboxListTile(
                              title: Text(
                                titles[index],
                                style: TextStyle(
                                  color: Color(0xFF4A4E69),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              value: checkBoxValue,
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (v) {
                                setState(() {
                                  checkBoxValue = v!;
                                });
                              });
                        },
                      );
                    },
                  ),
                  SizedBox(height: 20),
                  CheckboxListTile(
                      title: Text(
                        'Your request has been Submitted',
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Color(0xFF4A4E69),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      value: checkBoxValue,
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: (v) {
                        setState(() {
                          checkBoxValue = v!;
                        });
                      }),
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
                            return SecondPopupAfterClickingNext();
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
