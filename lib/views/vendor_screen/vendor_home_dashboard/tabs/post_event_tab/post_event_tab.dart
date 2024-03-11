import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/views/vendor_screen/vendor_home_dashboard/tabs/post_event_tab/payment_screens/payment_screen.dart';
import 'package:taptoparty/views/vendor_screen/vendor_home_dashboard/tabs/post_event_tab/portfolio_screen/portfolio_screen.dart';
import 'package:taptoparty/views/vendor_screen/vendor_home_dashboard/tabs/post_event_tab/profile_setup_for_service_provider/profile_setup_for_service_provider.dart';
import 'package:taptoparty/views/vendor_screen/vendor_home_dashboard/tabs/post_event_tab/quote_screen/create_a_quote_for_client.dart';
import 'package:taptoparty/views/vendor_screen/vendor_home_dashboard/tabs/post_event_tab/suppliers_for_vendor_screens/find_suppliers_screen.dart';
import 'package:taptoparty/views/vendor_screen/vendor_home_dashboard/tabs/post_event_tab/team_management_screens/team_management_screen.dart';
import 'package:taptoparty/views/vendor_screen/vendor_home_dashboard/tabs/post_event_tab/team_task_home_screens/team_task_home_screen.dart';

import '../../../../../themes/app_textstyles.dart';
import 'checklist_screen/checklist_screen.dart';
import 'customers_screens/client_list_overview_screen.dart';
import 'events_screens/event_promotions_screen/event_promotion_near_by.dart';
import 'events_screens/events_overview_screen/events_overview_screen.dart';
import 'inventory/inventory_overveiw.dart';
import 'messages_screen/vendor_messaging_with_clients.dart';

class PostEventTab extends StatefulWidget {
  const PostEventTab({super.key});

  @override
  State<PostEventTab> createState() => _PostEventTabState();
}

class _PostEventTabState extends State<PostEventTab> {
  final List<Map<String, dynamic>> titleANdNavigation = [
    {
      "title": "Profile",
      "page": ProfileSetupForServiceProvider(),
    },
    {
      "title": "My Portfolio",
      "page": PortfolioScreen(),
    },
    {
      "title": "Events",
      "page": EventsOverview(),
    },
    {
      "title": "Team\nManagement",
      "page": TeamManagementScreen(),
    },
    {
      "title": "Tasks",
      "page": TeamTaskHome(),
    },
    {
      "title": "Checklist",
      "page": CheckListScreen(),
    },
    {
      "title": "Inventory",
      "page": InventoryOverview(),
    },
    {
      "title": "Suppliers",
      "page": FindSuppliersScreen(),
    },
    {
      "title": "Products",
      "page": null,
    },
    {
      "title": "Customers",
      "page": ClientListOverviewScreen(),
    },
    {
      "title": "Messages",
      "page": VendorMessagingWithClient(),
    },
    {
      "title": "Payments",
      "page": PaymentScreen(),
    },
    {
      "title": "Quotes",
      "page": CreateAQuoteForClient(),
    },
    {
      "title": "Event Promotions",
      "page": EventPromotionNearBy(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("images/ellipse.png"),
        // Padding(
        //   padding: const EdgeInsets.only(top: 60),
        //   child: GridView.builder(
        //     shrinkWrap: true,
        //     itemCount: titleANdNavigation.length,
        //     padding: EdgeInsets.symmetric(horizontal: 20),
        //     physics: NeverScrollableScrollPhysics(),
        //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //         crossAxisSpacing: 7, mainAxisSpacing: 7, crossAxisCount: 3),
        //     itemBuilder: (BuildContext context, int index) {
        //       return GestureDetector(
        //         onTap: () => navigateToPage(
        //             context: context,
        //             pageName: titleANdNavigation[index]["page"]),
        //         child: Container(
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(8),
        //             color: Color(0xffF1F0ED),
        //           ),
        //           child: Center(
        //             child: Text(
        //               titleANdNavigation[index]["title"],
        //               textAlign: TextAlign.center,
        //               style: AppTextStyles.gfsDidotStyle.copyWith(
        //                 fontWeight: FontWeight.w400,
        //                 fontSize: 18,
        //               ),
        //             ),
        //           ),
        //         ),
        //       );
        //     },
        //   ),
        // ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RoundCardForVendor(
                    onTap: () => navigateToPage(
                      context: context,
                      pageName: titleANdNavigation[0]["page"],
                    ),
                    title: titleANdNavigation[0]["title"],
                  ),
                  SizedBox(width: 5),
                  RoundCardForVendor(
                    onTap: () => navigateToPage(
                      context: context,
                      pageName: titleANdNavigation[1]["page"],
                    ),
                    title: titleANdNavigation[1]["title"],
                  ),
                  SizedBox(width: 5),
                  RoundCardForVendor(
                    onTap: () => navigateToPage(
                      context: context,
                      pageName: titleANdNavigation[2]["page"],
                    ),
                    title: titleANdNavigation[3]["title"],
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RoundCardForVendor(
                    onTap: () => navigateToPage(
                      context: context,
                      pageName: titleANdNavigation[3]["page"],
                    ),
                    title: titleANdNavigation[3]["title"],
                  ),
                  SizedBox(width: 5),
                  RoundCardForVendor(
                    onTap: () => navigateToPage(
                      context: context,
                      pageName: titleANdNavigation[4]["page"],
                    ),
                    title: titleANdNavigation[4]["title"],
                  ),
                  SizedBox(width: 5),
                  RoundCardForVendor(
                    onTap: () => navigateToPage(
                      context: context,
                      pageName: titleANdNavigation[5]["page"],
                    ),
                    title: titleANdNavigation[5]["title"],
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RoundCardForVendor(
                    onTap: () => navigateToPage(
                      context: context,
                      pageName: titleANdNavigation[6]["page"],
                    ),
                    title: titleANdNavigation[6]["title"],
                  ),
                  SizedBox(width: 5),
                  RoundCardForVendor(
                    onTap: () => navigateToPage(
                      context: context,
                      pageName: titleANdNavigation[7]["page"],
                    ),
                    title: titleANdNavigation[7]["title"],
                  ),
                  SizedBox(width: 5),
                  RoundCardForVendor(
                    onTap: () => navigateToPage(
                      context: context,
                      pageName: titleANdNavigation[8]["page"],
                    ),
                    title: titleANdNavigation[8]["title"],
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RoundCardForVendor(
                    onTap: () => navigateToPage(
                      context: context,
                      pageName: titleANdNavigation[9]["page"],
                    ),
                    title: titleANdNavigation[9]["title"],
                  ),
                  SizedBox(width: 5),
                  RoundCardForVendor(
                    onTap: () => navigateToPage(
                      context: context,
                      pageName: titleANdNavigation[10]["page"],
                    ),
                    title: titleANdNavigation[10]["title"],
                  ),
                  SizedBox(width: 5),
                  RoundCardForVendor(
                    onTap: () => navigateToPage(
                      context: context,
                      pageName: titleANdNavigation[11]["page"],
                    ),
                    title: titleANdNavigation[11]["title"],
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(width: 60),
                  RoundCardForVendor(
                    onTap: () => navigateToPage(
                      context: context,
                      pageName: titleANdNavigation[12]["page"],
                    ),
                    title: titleANdNavigation[12]["title"],
                  ),
                  SizedBox(width: 5),
                  RoundCardForVendor(
                    onTap: () => navigateToPage(
                      context: context,
                      pageName: titleANdNavigation[13]["page"],
                    ),
                    title: titleANdNavigation[13]["title"],
                  ),
                  SizedBox(width: 60),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class RoundCardForVendor extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const RoundCardForVendor({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 127.w,
          height: 104.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color(0xffF1F0ED),
          ),
          child: Center(
            child: Text(
              title!,
              textAlign: TextAlign.center,
              style: AppTextStyles.gfsDidotStyle.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
