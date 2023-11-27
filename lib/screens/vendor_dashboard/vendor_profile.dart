import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taptoparty/screens/vendor_dashboard/vendor_dashboard.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';

import '../../themes/app_colors.dart';
import 'featured_work.dart';

class VendorProfile extends StatelessWidget {
  const VendorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 240.h,
                width: double.infinity,
                child: Stack(
                  children: [
                    Image.asset(
                      'images/pic1.png',
                      fit: BoxFit.cover,
                    ),
                    IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          navigateToPage(
                              context: context, pageName: VendorDashboard());
                        })
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    ListTile(
                        title: Text(
                          'Photographer',
                          style: AppTextStyles.gfsDidotStyle.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          ),
                        ),
                        subtitle: Text(
                          'Randy Alcorn',
                          style: AppTextStyles.gfsDidotStyle.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: Colors.grey),
                        ),
                        trailing: Container(
                            height: 49,
                            width: 52,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.mainColor),
                            child: Image(
                              image: AssetImage('images/call.png'),
                            ))),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(color: Color(0xffF1F0ED)),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: AppColors.mainColor,
                                      radius: 20,
                                      child: Icon(
                                        Icons.facebook,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    CircleAvatar(
                                      backgroundColor: AppColors.mainColor,
                                      radius: 20,
                                      child: FaIcon(
                                        FontAwesomeIcons.instagram,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    CircleAvatar(
                                      backgroundColor: AppColors.mainColor,
                                      radius: 20,
                                      child: FaIcon(
                                        FontAwesomeIcons.twitter,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    CircleAvatar(
                                      backgroundColor: AppColors.mainColor,
                                      radius: 20,
                                      child: FaIcon(
                                        FontAwesomeIcons.google,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    CircleAvatar(
                                      backgroundColor: AppColors.mainColor,
                                      radius: 20,
                                      child: FaIcon(
                                        FontAwesomeIcons.yelp,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "My Website",
                                      style: AppTextStyles.gfsDidotStyle
                                          .copyWith(fontSize: 16),
                                    ),
                                    Icon(Icons.arrow_forward_ios),
                                  ],
                                ),
                                SizedBox(height: 40),
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetur \nadipiscing elit. Facilisi morbi sit \nconsectetur elit nibh faucibus morbi. Sed sit eget est lacus.',
                                  style: AppTextStyles.gfsDidotStyle.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff6D7280)),
                                ),
                                SizedBox(height: 30),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    children: [
                                      Image(
                                        image: AssetImage('images/icon2.png'),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'Reviews',
                                        style: AppTextStyles.plusJakartaSans
                                            .copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 3),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            border: Border.all(
                                                color: Colors.black)),
                                        child: Row(
                                          children: List.generate(
                                            5,
                                            (index) => Icon(
                                              Icons.star,
                                              color: Color(0xffFFE202),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundImage:
                                            AssetImage('images/Avatar.png'),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        height: 90,
                                        decoration: BoxDecoration(
                                            color: Color(0xffC7D6DD),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'it consectetur elit nibh faucibus morbi. \nSed sit eget est lacus.',
                                              style: AppTextStyles
                                                  .plusJakartaSans
                                                  .copyWith(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xff6D7280)),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 40),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -15,
                          right: 0,
                          left: 0,
                          child: GestureDetector(
                            onTap: () {
                              navigateToPage(
                                  context: context, pageName: FeaturedWork());
                            },
                            child: Container(
                              height: 50,
                              alignment: Alignment.center,
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.black,
                                ),
                              ),
                              child: Text(
                                "My featured week",
                                style: AppTextStyles.gfsDidotStyle
                                    .copyWith(fontSize: 16),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 30),
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
