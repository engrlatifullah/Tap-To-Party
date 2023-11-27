import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:taptoparty/themes/app_colors.dart';

import '../../../themes/app_textstyles.dart';
import '../event_catogoris.dart';

class venueTab extends StatefulWidget {
  const venueTab({super.key});

  @override
  State<venueTab> createState() => _venueTabState();
}

class _venueTabState extends State<venueTab> {
  PageController pageController = PageController();

  var dropDownValue;
  var locationValue;
  final List places = [
    "Place 1",
    "Place 2",
    "Place 3",
    "Place 4",
  ];
  final List dropDownItems = [
    "Wedding Places",
    "Farm Houses",
    "Hotels",
    "Parks",
    "Event Places",
    "Restaurants",
    "Conference Halls",
  ];
  final List pageViewImages = [
    "images/2.jpg",
    "images/1.jpg",
    "images/3.jpg",
  ];
  final List featuredEventsImage = [
    "images/1.jpg",
    "images/2.jpg",
    "images/3.jpg",
    "images/4.jpg",
    "images/5.jpg",
    "images/6.jpg",
    "images/7.jpg",
    "images/8.jpg",
    "images/9.jpg",
  ];
  final List<String> items = [
    "School",
    "Birthday",
    "wedding",
    "caterer",
    "florist",
    "photographer",
    "makeup",
    "artist",
    "musician",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                        items: places.map((e) {
                          return DropdownMenuItem(
                            child: Text(
                              e,
                              style: AppTextStyles.plusJakartaSans.copyWith(
                                fontSize: 12,
                              ),
                            ),
                            value: e,
                          );
                        }).toList(),
                        hint: FittedBox(child: Text("Select Location")),
                        value: locationValue,
                        isExpanded: true,
                        onChanged: (v) {
                          locationValue = v;
                          currentIndex = 3;
                          setState(() {

                          });
                        }),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                        items: dropDownItems.map((e) {
                          return DropdownMenuItem(
                            child: Text(
                              e,
                              style: AppTextStyles.plusJakartaSans.copyWith(
                                fontSize: 12,
                              ),
                            ),
                            value: e,
                          );
                        }).toList(),
                        hint: FittedBox(child: Text("Select Venue")),
                        value: dropDownValue,
                        isExpanded: true,
                        onChanged: (v) {
                          dropDownValue = v;
                          setState(() {

                          });
                        }),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20,),
        Text(
          'Featured Themes',
          style: AppTextStyles.gfsDidotStyle.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          height: 200.h,
          child: PageView.builder(
            controller: pageController,
            itemCount: pageViewImages.length,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                  width: double.infinity,
                  height: 200.h,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.asset(
                      pageViewImages[index],
                      fit: BoxFit.cover,
                    ),
                  ));
            },
          ),
        ),
        SizedBox(height: 10),
        Center(
          child: SmoothPageIndicator(
            controller: pageController, // PageController
            count: pageViewImages.length,
            effect: WormEffect(
                dotHeight: 10,
                dotWidth: 10,
                activeDotColor: AppColors.primaryBlack),
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Featured Events",
              style: AppTextStyles.gfsDidotStyle
                  .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            Text(
              "See all",
              style: AppTextStyles.gfsDidotStyle
                  .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(items.length, (index) {
              return Padding(
                padding: EdgeInsets.only(right: 10),
                child: Column(

                  children: [
                    Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),

                        image: DecorationImage(
                          image: AssetImage(featuredEventsImage[index]),
                          fit: BoxFit.cover
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(items[index]),
                  ],
                ),
              );
            }),
          ),
        )
      ],
    );
  }
}
