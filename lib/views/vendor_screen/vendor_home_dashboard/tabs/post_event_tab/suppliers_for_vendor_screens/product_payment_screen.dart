import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';

import 'delivery_address_screen.dart';

class ProductPaymentScreen extends StatefulWidget {
  const ProductPaymentScreen({super.key});

  @override
  State<ProductPaymentScreen> createState() => _ProductPaymentScreenState();
}

class _ProductPaymentScreenState extends State<ProductPaymentScreen> {
  final paymentImages = [
    "images/quill_creditcard.svg",
    "images/paypal.png",
    "images/logos_google-pay.svg",
    "images/cib_apple-pay.svg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F0EDED),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Payment',
          style: AppTextStyles.plusJakartaSans.copyWith(
            color: Color(0xFF1D1E20),
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            width: 45,
            height: 45,
            margin: EdgeInsets.all(10),
            decoration: ShapeDecoration(
              color: Color(0xFFFEFEFE),
              shape: OvalBorder(),
            ),
            child: Icon(Icons.arrow_back),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(paymentImages.length, (index) {
                return Container(
                  width: 76,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: Colors.white,
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
                  child: index == 1
                      ? Image.asset(paymentImages[index])
                      : Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SvgPicture.asset(paymentImages[index]),
                      ),
                );
              }),
            ),
            SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Name on Card',
                  style: AppTextStyles.plusJakartaSans.copyWith(
                    color: Color(0xFF1D1E20),
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  children: [
                    SvgPicture.asset("images/Frame.svg"),
                    SizedBox(width: 5),
                    Image.asset("images/image 9.png"),
                  ],
                )
              ],
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 50,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Molly Hanson",
                  border: OutlineInputBorder(borderSide: BorderSide.none)
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Card Number',
              style: AppTextStyles.plusJakartaSans.copyWith(
                color: Color(0xFF1D1E20),
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 50,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "5254 7634 8734 7690",
                    border: OutlineInputBorder(borderSide: BorderSide.none)
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      'EXP',
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        color: Color(0xFF1D1E20),
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "04/24",
                            border: OutlineInputBorder(borderSide: BorderSide.none)
                        ),
                      ),
                    ),
                  ],
                ),),
                SizedBox(width: 10,),
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      'CVV',
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        color: Color(0xFF1D1E20),
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "7763",
                            border: OutlineInputBorder(borderSide: BorderSide.none)
                        ),
                      ),
                    ),
                  ],
                ),),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Save card info',
                  style: AppTextStyles.plusJakartaSans.copyWith(
                    color: Color(0xFF1D1E20),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                CupertinoSwitch(value: true, onChanged: (v){}),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Billing same as shipping address',
                  style: AppTextStyles.plusJakartaSans.copyWith(
                    color: Color(0xFF1D1E20),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                CupertinoSwitch(value: true, onChanged: (v){},activeColor: Colors.white,),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 53,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Row(
                children: [
                  Expanded(child: TextField(
                    decoration: InputDecoration(
                      hintText: "Have a Promo Code",
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),),
                  SizedBox(width: 10),
                  Container(
                    width: 79,
                    height: 35,
                    decoration: ShapeDecoration(
                      color: Color(0xFF4A4E69),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Apply',
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          color: Color(0xEDF1F0ED),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: GestureDetector(
                onTap: (){
                  navigateToPage(context: context, pageName: DeliveryAddress());
                },
                child: Container(
                  width: 278,
                  height: 49,

                  decoration: ShapeDecoration(
                    color: Color(0xFFA99F96),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Proceed ',
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        color: Color(0xFFFEFEFE),
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
