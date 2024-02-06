import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/widget/custom_app_bar.dart';

class SelectedVendorPage extends StatefulWidget {
  const SelectedVendorPage({super.key});

  @override
  State<SelectedVendorPage> createState() => _SelectedVendorPageState();
}

class _SelectedVendorPageState extends State<SelectedVendorPage> {
  int currentIndex = 0;
  var dropDownValue;
  final List<String> tabTitles = [
    "Events",
    "Vendors",
    "Venues",
  ];

  final List dropDownItems = [
    "Weddings",
    "Engagement",
    "Birthdays",
    "Graduation",
    "Corporate Events",
    "School Events",
    "Pool Parties",
    "Outdoor Events",
    "Indoor Parties",
    "Baby Shower",
    "BBQ Party",
    "Anniversaries",
    "Festivals",
    "Others",
  ];
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
                ' Tap to Party ',
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Lets Start Creating Your Team for your Event',
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(tabTitles.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    child: Column(
                      children: [
                        Text(
                          tabTitles[index],
                          style: AppTextStyles.plusJakartaSans.copyWith(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          height: 2,
                          width: 60,
                          color: currentIndex == index
                              ? Colors.black
                              : Colors.transparent,
                        )
                      ],
                    ),
                  );
                }),
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(12)),
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
                        hint: FittedBox(
                            child: Text(
                          "Select Event Category",
                          style: AppTextStyles.gfsDidotStyle.copyWith(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        )),
                        value: dropDownValue,
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        isExpanded: true,
                        onChanged: (v) {
                          dropDownValue = v;
                          setState(() {});
                        }),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          width: 104,
                          height: 180,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/${index + 1}.jpg"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Great Performances ',
                                    style: AppTextStyles.gfsDidotStyle.copyWith(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Icon(Icons.favorite_border)
                                ],
                              ),
                              SizedBox(height: 5),
                              Text(
                                'New York City',
                                style: AppTextStyles.gfsDidotStyle.copyWith(
                                  fontSize: 11,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                '#50-100 , # celebration feast  # culinary artistry',
                                style: AppTextStyles.plusJakartaSans.copyWith(
                                  color: Color(0xFFC23232),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'We believe in collaborative commitment to service, innovation and quality. We believe in serving fresher, tastier, beautiful plates of seasonal and sustainably harvested foods.',
                                style: AppTextStyles.gfsDidotStyle.copyWith(
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 20);
                  },
                  itemCount: 4),
            ],
          ),
        ),
      ),
    );
  }
}
