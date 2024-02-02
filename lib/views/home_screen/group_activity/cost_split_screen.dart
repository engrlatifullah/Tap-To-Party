import 'package:flutter/material.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/views/home_screen/group_activity/payment_setup_screen.dart';

import '../../../themes/app_textstyles.dart';

class CostSplitScreen extends StatelessWidget {
  const CostSplitScreen({super.key});

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
          Text(
            'Tap to Party',
            style: AppTextStyles.gfsDidotStyle.copyWith(
              color: Colors.black,
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
              SizedBox(height: 10),
              Image.asset("images/c5ef61d7b79c41e18812f29e8886306b.gif"),
              Text(
                'Group Event Cost\nSummary',
                textAlign: TextAlign.center,
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  color: Color(0xFF4A4E69),
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                decoration: ShapeDecoration(
                  color: Color(0xFF4A4E69),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        height: 75,
                        decoration: ShapeDecoration(
                          color: Color(0xEDF1F0ED),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Pay',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              '20',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        height: 75,
                        padding: EdgeInsets.all(5),
                        decoration: ShapeDecoration(
                          color: Color(0xEDF1F0ED),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Pay',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              '20',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Split Cost And Pay',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.gfsDidotStyle.copyWith(
                      color: Color(0xFF4A4E69),
                      fontSize: 20,
                    ),
                  ),
                  Container(
                    width: 138,
                    height: 38,
                    decoration: ShapeDecoration(
                      color: Color(0xFF4A4E69),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
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
                        'Cost Details',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 112,
                    height: 56,
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Color(0xEDF1F0ED)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '\$200',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.gfsDidotStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Total Bill',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.gfsDidotStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '\$20',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Per Group/Person',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '\$10',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Add Cost',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 299,
                  height: 62,
                  child: Row(
                    children: [
                      Container(
                        width: 98,
                        decoration: BoxDecoration(color: Color(0xFFA99F96)),
                        child: Center(
                          child: Text(
                            'USD',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.gfsDidotStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 196,
                        height: 62,
                        decoration: BoxDecoration(color: Color(0xEDF1F0ED)),
                        child: Center(
                          child: Text(
                            '\$  Amount',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.gfsDidotStyle.copyWith(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 299,
                  height: 62,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Color(0xEDF1F0ED)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Select which attendees will pay ',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_down_sharp)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 299,
                  height: 62,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Color(0xEDF1F0ED)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Whose payment is Pending',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_down_sharp)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  navigateToPage(
                      context: context, pageName: PaymentSetupScreen());
                },
                child: Container(
                  width: 301,
                  height: 38,
                  decoration: ShapeDecoration(
                    color: Color(0xFF4A4E69),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
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
                      'Pay Now',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                        color: Color(0xEDF1F0ED),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 301,
                height: 38,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                    borderRadius: BorderRadius.circular(15),
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
                    'Already Paid',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.gfsDidotStyle.copyWith(
                      color: Color(0xFF4A4E69),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
