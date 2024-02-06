import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/views/home_screen/request_quote_screen/portfolio_featured_work.dart';

import '../../../themes/app_textstyles.dart';
import '../../../widget/custom_app_bar.dart';

class VendorPortfolioScreen extends StatelessWidget {
  const VendorPortfolioScreen({super.key});

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
                'Hey there!',
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 210,
                margin: EdgeInsets.symmetric(horizontal: 15),
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/5.jpg"),
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow.shade500,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "5.0 (332 reviews)",
                    style: AppTextStyles.plusJakartaSans
                        .copyWith(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Photographer',
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Randy Alcorn',
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  Spacer(),
                  SvgPicture.asset(
                    "images/fb.svg",
                    height: 20,
                  ),
                  SizedBox(width: 5),
                  SvgPicture.asset(
                    "images/insta.svg",
                    height: 20,
                  ),
                  SizedBox(width: 5),
                  SvgPicture.asset(
                    "images/google.svg",
                    height: 20,
                  ),
                  SizedBox(width: 5),
                  SvgPicture.asset(
                    "images/arcticons_yelp.svg",
                    height: 20,
                  ),
                  SizedBox(width: 5),
                ],
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(
                    0x92F1F0EDED,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Serves: 30-40 \$ per person',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF0F0F0F),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Vibe: Fresh, Mediterranean ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF0F0F0F),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'About Me',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                        color: Color(0xFF0F0F0F),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Food first. Inspired by ingredients. Gracious service. Occasions Caterers is a boutique, full-service catering firm in Washington DC. Established in 1986, their team conceives, designs and produces bespoke experiences.',
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 40),
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              navigateToPage(
                                  context: context,
                                  pageName: PortfolioFeaturedWorkScreen());
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
                              child: Center(
                                child: Text(
                                  'Featured Work',
                                  style: AppTextStyles.gfsDidotStyle.copyWith(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
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
                            child: Center(
                              child: Text(
                                'Request Quote',
                                style: AppTextStyles.gfsDidotStyle.copyWith(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
