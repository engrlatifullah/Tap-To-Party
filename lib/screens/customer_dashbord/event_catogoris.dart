import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taptoparty/screens/customer_dashbord/tabs/category_event_tab.dart';
import 'package:taptoparty/screens/customer_dashbord/tabs/selected_category_tab.dart';
import 'package:taptoparty/screens/customer_dashbord/tabs/vendors_tab.dart';
import 'package:taptoparty/screens/customer_dashbord/tabs/venue.dart';
import 'package:taptoparty/themes/app_colors.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/widget/custom_input.dart';

import '../custom_dash_guest/guest_mangemant_screen.dart';
import '../custom_dash_guest/tabs/evite_tab.dart';
int currentIndex = 0;
class EventCatgrios extends StatefulWidget {
  const EventCatgrios({super.key});

  @override
  State<EventCatgrios> createState() => _EventCatgriosState();
}

class _EventCatgriosState extends State<EventCatgrios> {


  final List pages = [
    CategoryEventTab(),
    VendorsTab(),
    venueTab(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: InkWell(
            onTap: () {
              navigateToPage(
                  context: context, pageName: GuestManagementScreen());
            },
            child: Icon(
              Icons.menu,
              size: 35,
              color: Colors.black,
            )),
        title: Text(
          ' Tap to Party ',
          style: AppTextStyles.gfsDidotStyle.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: PopupMenuButton(
                  icon: Icon(Icons.search),
                  itemBuilder: (BuildContext context) {
                    final List data = ["Search by Location", "Category"];
                    return data
                        .map(
                          (e) => PopupMenuItem(
                            child: Text(e),
                          ),
                        )
                        .toList();
                  },
                ),
              ),
              Center(
                child: Text(
                  'Lets Start Creating Your Team for your Event',
                  style: AppTextStyles.gfsDidotStyle.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      currentIndex = 0;
                      setState(() {});
                    },
                    child: Column(
                      children: [
                        Text(
                          "Events",
                          style: AppTextStyles.gfsDidotStyle
                              .copyWith(fontSize: 24),
                        ),
                        currentIndex == 0
                            ? Container(
                                height: 2,
                                width: 80,
                                color: AppColors.primaryBlack,
                              )
                            : SizedBox(),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      currentIndex = 1;
                      setState(() {});
                    },
                    child: Column(
                      children: [
                        Text(
                          "Vendors",
                          style: AppTextStyles.gfsDidotStyle
                              .copyWith(fontSize: 24),
                        ),
                        currentIndex == 1
                            ? Container(
                                height: 2,
                                width: 80,
                                color: AppColors.primaryBlack,
                              )
                            : SizedBox(),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      currentIndex = 2;
                      setState(() {});
                    },
                    child: Column(
                      children: [
                        Text(
                          "Venues ",
                          style: AppTextStyles.gfsDidotStyle
                              .copyWith(fontSize: 24),
                        ),
                        currentIndex == 2
                            ? Container(
                                height: 2,
                                width: 80,
                                color: AppColors.primaryBlack,
                              )
                            : SizedBox(),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
             currentIndex == 3 ? SelectedCategoryTab() : pages[currentIndex],
            ],
          ),
        ),
      ),
    );
  }
}
