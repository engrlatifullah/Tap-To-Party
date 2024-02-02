import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../../themes/app_colors.dart';
import '../../../../../../themes/app_textstyles.dart';

class VendorsTabScreen extends StatefulWidget {
  const VendorsTabScreen({super.key});

  @override
  State<VendorsTabScreen> createState() => _VendorsTabScreenState();
}

class _VendorsTabScreenState extends State<VendorsTabScreen> {
  PageController pageController = PageController();

  var dropDownValue;
  var locationValue;

  final List pageViewImages = [
    "images/1.jpg",
    "images/2.jpg",
    "images/3.jpg",
  ];
  final List places = [
    "Alexander City",
    "Andalusia",
    "Anniston",
    "Athens",
  ];
  List<String> eventTypes = [
    "Wedding",
    "Corporate Event",
    "Social Gathering",
    "Cultural and Religious Event",
    "Festivities",
    "Charitable and Fundraising Event",
    "Entertainment Event",
    "Educational Event",
    "Health and Wellness Event",
    "Art and Cultural Event",
    "Sports Event",
    "Food and Beverage Event",
    "Technology and Innovation Event",
    "Environmental and Sustainability Event",
    "Travel and Tourism Event",
    "Political and Government Event",
    "Community and Non-Profit Event",
    "Virtual and Hybrid Event",
    "Birthday Party",
    "Conference",
    "Gala Dinner",
    "Concert",
    "Charity Event",
    "Seminar",
    "Workshop",
    "Exhibition",
    "School Event",
    "Other",
  ];
  final List<String> titles = [
    "Theme",
    "Style",
    "Capacity",
    "Budget",
    "Date & Time"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: ShapeDecoration(
                    color: Color(0xEDF1F0ED),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignOutside,
                      ),
                      borderRadius: BorderRadius.circular(10),
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
                            setState(() {});
                          }),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: ShapeDecoration(
                    color: Color(0xEDF1F0ED),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignOutside,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          items: eventTypes.map((e) {
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
                          hint:
                              FittedBox(child: Text("Select Vendor Category")),
                          value: dropDownValue,
                          isExpanded: true,
                          onChanged: (v) {
                            dropDownValue = v;
                            setState(() {});
                          }),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.filter_list),
            Icon(Icons.filter_alt_outlined),
          ],
        ),
        SizedBox(height: 30),
        Container(
          width: double.infinity,
          height: 56.94,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(color: Color(0xFFA99F96)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: titles.map((e) {
              return Container(
                height: 31.97,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: ShapeDecoration(
                  color: Color(0xEDF1F0ED),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Center(
                  child: Text(
                    e,
                    textAlign: TextAlign.center,
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Connect with our Top Service\nProviders',
          textAlign: TextAlign.center,
          style: AppTextStyles.plusJakartaSans.copyWith(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 10),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            'See all ',
            style: AppTextStyles.gfsDidotStyle.copyWith(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 180.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: pageViewImages.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                        width: 139.65,
                        height: 110.89,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            pageViewImages[index],
                            fit: BoxFit.cover,
                          ),
                        )),
                    SizedBox(height: 10),
                    Text(
                      'Weddings',
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
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
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(color: Color(0xFF4A4E69)),
          child: Column(
            children: [
              SizedBox(height: 30),
              Text(
                'Request a Quote for your event',
                textAlign: TextAlign.center,
                style: AppTextStyles.plusJakartaSans.copyWith(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Simply fill out the form provided, and we'll facilitate introductions with venues and vendors tailored to your event. Let us take the reins, ensuring your party exceeds all expectations!",
                style: AppTextStyles.plusJakartaSans.copyWith(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(15),
                    decoration: ShapeDecoration(
                      color: Color(0xEDF1F0ED),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignOutside,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        Text(
                          'What are you planning',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.plusJakartaSans.copyWith(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 40.96,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1, color: Color(0xFF4A4E69)),
                                  ),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(left: 10),
                                      hintText: "Event Type",
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none)),
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              child: Container(
                                height: 40.96,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1, color: Color(0xFF4A4E69)),
                                  ),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Date",
                                      contentPadding: EdgeInsets.only(left: 10),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 40.96,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1, color: Color(0xFF4A4E69)),
                                  ),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(left: 10),
                                      hintText: "Event Type",
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none)),
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              child: Container(
                                height: 40.96,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1, color: Color(0xFF4A4E69)),
                                  ),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Date",
                                      contentPadding: EdgeInsets.only(left: 10),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: -20,
                    top: -90,
                    child: SizedBox(
                      width: 150,
                      height: 150,
                      child: Image.asset(
                          "images/c61db17d32ddbc279742641316f15b7b.gif"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: 121,
                height: 40.96,
                decoration: ShapeDecoration(
                  color: Color(0xFF4A4E69),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Get Free Quote',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Find Your Perfect Venue',
                textAlign: TextAlign.center,
                style: AppTextStyles.plusJakartaSans.copyWith(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 78,
                decoration: ShapeDecoration(
                  color: Color(0xEDF1F0ED),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Explore Unique Event Spaces',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Find Your Perfect Venue',
                textAlign: TextAlign.center,
                style: AppTextStyles.plusJakartaSans.copyWith(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 78,
                decoration: ShapeDecoration(
                  color: Color(0xEDF1F0ED),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Explore Unique Event Spaces',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Manage Guests',
                textAlign: TextAlign.center,
                style: AppTextStyles.plusJakartaSans.copyWith(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 78,
                decoration: ShapeDecoration(
                  color: Color(0xEDF1F0ED),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Effortless Guest Management',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
