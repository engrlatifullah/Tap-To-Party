import 'package:flutter/material.dart';

import '../../../themes/app_textstyles.dart';

class PaymentSetupScreen extends StatelessWidget {
  const PaymentSetupScreen({super.key});

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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                Center(child: Image(image: AssetImage('images/clip7.png'))),
                Center(
                  child: Text(
                    'PaymentMethods',
                    style: AppTextStyles.gfsDidotStyle.copyWith(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xffF1F0ED),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("images/bank.png"),
                          SizedBox(height: 5),
                          Text(
                            'Bank Transfer',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.plusJakartaSans.copyWith(
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                      Text(
                        'For more than \$1000',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          color: Color(0xFF4A4E69),
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 52,
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.centerLeft,
                  decoration: ShapeDecoration(
                    color: Color(0xEDF1F0ED),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Zelle',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 52,
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.centerLeft,
                  decoration: ShapeDecoration(
                    color: Color(0xEDF1F0ED),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Venmo',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 52,
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.centerLeft,
                  decoration: ShapeDecoration(
                    color: Color(0xEDF1F0ED),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Paypal',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 52,
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.centerLeft,
                  decoration: ShapeDecoration(
                    color: Color(0xEDF1F0ED),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.credit_card_outlined,
                        color: Color(0xFF4A4E69),
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Card Payment',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Center(
                  child: Container(
                    width: 155,
                    height: 36,
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
                Center(
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: 155,
                      height: 36,
                      decoration: ShapeDecoration(
                        color: Color(0xFFA99F96),
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
                          'Back to Payment',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.gfsDidotStyle.copyWith(
                            color: Color(0xEDF1F0ED),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
