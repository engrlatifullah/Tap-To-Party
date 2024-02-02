import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taptoparty/themes/app_colors.dart';
import 'package:taptoparty/themes/app_textstyles.dart';

class TrackingScreen extends StatelessWidget {
  const TrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tracking',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Order date:',
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Color(0xFFFEFEFE),
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Feb 16, 2022',
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Color(0xFF1D2939),
                      fontSize: 10.93,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 13.6,
                    width: 1,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  SvgPicture.asset("images/truck-tick.svg"),
                  SizedBox(width: 10),
                  Text(
                    'Estimated delivery: May 16, 2022',
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Color(0xEDF1F0ED),
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 192,
                padding: EdgeInsets.all(15),
                decoration: ShapeDecoration(
                  color: Color(0xFFA99F96),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.06),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    Text(
                      'Good News your package is on the way',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Order ID: 3354654654526',
                      style: TextStyle(
                        color: Color(0xFF344054),
                        fontSize: 20.50,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'New York - Boston',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "History",
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Color(0xEDF1F0ED),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Details",
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Color(0xEDF1F0ED),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.arrow_forward_sharp,
                      size: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: SvgPicture.asset("images/truck-fast.svg"),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Packaged ready for shipping",
                          style: AppTextStyles.gfsDidotStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Buffalo, NY",
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                            Text(
                              "Nov,10. 11,45 PM",
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                height: 100,
                width: 2,
                margin: EdgeInsets.only(left: 30),
                color: Colors.white,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xFFA99F96),
                    child: SvgPicture.asset("images/routing-2.svg"),
                  ),
                  SizedBox(width: 20),
                  Text(
                    "In Transit, Harrison City",
                    style: AppTextStyles.gfsDidotStyle.copyWith(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  Spacer(),
                  Text(
                    "Nov,10. 11,45 PM",
                    style: AppTextStyles.gfsDidotStyle.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ],
              ),
              Container(
                height: 100,
                width: 2,
                margin: EdgeInsets.only(left: 30),
                color: Colors.white,
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFFA99F96),
                    radius: 30,
                    child: SvgPicture.asset("images/box.svg"),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Out for Delivery",
                          style: AppTextStyles.gfsDidotStyle.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Boston, MA",
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                            Text(
                              "Nov,10. 11,45 PM",
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
