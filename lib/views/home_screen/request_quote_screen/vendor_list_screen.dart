import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/views/home_screen/request_quote_screen/rating_and_reviews_screen.dart';
import 'package:taptoparty/views/home_screen/request_quote_screen/request_quote_page.dart';
import 'package:taptoparty/views/home_screen/request_quote_screen/selected_vendor_page.dart';
import 'package:taptoparty/views/home_screen/request_quote_screen/vendor_protfolio_screen.dart';
import 'package:taptoparty/widget/custom_app_bar.dart';

class VendorListScreen extends StatelessWidget {
  const VendorListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tap to Party ',
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      navigateToPage(
                        context: context,
                        pageName: SelectedVendorPage(),
                      );
                    },
                    child: Text(
                      'Vendors',
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.navigate_next, color: Colors.grey),
                  SizedBox(width: 10),
                  Text(
                    'Photographers',
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 50,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.location_on_outlined),
                      suffixIcon: Icon(Icons.search),
                      hintText: "Search",
                      contentPadding: EdgeInsets.only(top: 10),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return VendorCard();
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 20);
                },
                itemCount: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VendorCard extends StatelessWidget {
  const VendorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 41,
                  height: 41,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(side: BorderSide(width: 1)),
                  ),
                  child: Center(
                    child: Icon(Icons.navigate_before),
                  ),
                ),
                Container(
                  width: 41,
                  height: 41,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(side: BorderSide(width: 1)),
                  ),
                  child: Center(
                    child: Icon(Icons.navigate_next),
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(height: 10),
        GestureDetector(
          onTap: () {
            navigateToPage(context: context, pageName: RatingAndReviewScreen());
          },
          child: Row(
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
                SizedBox(height: 5),
                Text(
                  'San Francisco, CA',
                  style: AppTextStyles.gfsDidotStyle.copyWith(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                )
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                navigateToPage(
                  context: context,
                  pageName: VendorPortfolioScreen(),
                );
              },
              child: Container(
                height: 30,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: ShapeDecoration(
                  color: Color(0xFF4A4E69),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    'My Portfolio',
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 30,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFAAAABC)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.call,
                    color: Color(0xFF4A4E69),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Call',
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Color(0xFF4A4E69),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 30,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFAAAABC)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Center(
                child: Text(
                  'website',
                  style: AppTextStyles.plusJakartaSans.copyWith(
                    color: Color(0xFF4A4E69),
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
            ),
            Container(
              height: 30,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFAAAABC)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.share,
                    color: Color(0xFF4A4E69),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Share',
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Color(0xFF4A4E69),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Text(
          '\$150-\$300/hr',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
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
              Text(
                '"Unlock the artistry in every frame with Randy, a visionary lensmith capturing moments that resonate. Elevate your visual storytelling with their expert eye and distinctive style."',
                style: AppTextStyles.plusJakartaSans.copyWith(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  navigateToPage(
                    context: context,
                    pageName: RequestQuotePage(),
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
                  child: Center(
                    child: Text(
                      'Request  quote',
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
