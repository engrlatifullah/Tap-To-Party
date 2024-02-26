import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/views/home_screen/shops_screen/tracking_screen.dart';

class OrderConfirmation extends StatelessWidget {
  const OrderConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4A4E69),
      body: Padding(
        padding:
            EdgeInsets.fromLTRB(15, MediaQuery.of(context).padding.top, 15, 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.arrow_back),
              ),
            ),
            SizedBox(height: 20),
            Center(
                child: Image.asset("images/undraw_order_confirmed_aaw7 1.png")),
            SizedBox(height: 30),
            Center(
              child: Text(
                'Order Confirmed!',
                style: AppTextStyles.plusJakartaSans.copyWith(
                  color: Color(0xEDF1F0ED),
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.93, vertical: 6.83),
                decoration: ShapeDecoration(
                  color: Color(0xEDF1F0ED),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: IntrinsicWidth(
                  child: Row(
                    children: [
                      Text(
                        'Track order',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.location_on),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                navigateToPage(context: context, pageName: TrackingScreen());
              },
              child: Container(
                width: double.infinity,
                height: 50,
                padding: const EdgeInsets.all(10),
                decoration: ShapeDecoration(
                  color: Color(0xEDF1F0ED),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Go to Orders',
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Color(0xFF4A4E69),
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 50,
              padding: const EdgeInsets.all(10),
              decoration: ShapeDecoration(
                color: Color(0xFFA99F96),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Center(
                child: Text(
                  'Continue Shopping',
                  style: AppTextStyles.plusJakartaSans.copyWith(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
