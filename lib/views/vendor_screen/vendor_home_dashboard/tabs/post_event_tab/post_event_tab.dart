import 'package:flutter/material.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/views/vendor_screen/vendor_home_dashboard/tabs/post_event_tab/payment_screens/payment_screen.dart';
import 'package:taptoparty/views/vendor_screen/vendor_home_dashboard/tabs/post_event_tab/portfolio_screen/portfolio_screen.dart';
import 'package:taptoparty/views/vendor_screen/vendor_home_dashboard/tabs/post_event_tab/profile_setup_for_service_provider/profile_setup_for_service_provider.dart';
import 'package:taptoparty/views/vendor_screen/vendor_home_dashboard/tabs/post_event_tab/quote_screen/create_a_quote_for_client.dart';
import 'package:taptoparty/views/vendor_screen/vendor_home_dashboard/tabs/post_event_tab/quote_screen/quote_screen.dart';
import 'package:taptoparty/views/vendor_screen/vendor_home_dashboard/tabs/post_event_tab/team_management_screens/team_management_screen.dart';
import 'package:taptoparty/views/vendor_screen/vendor_home_dashboard/tabs/post_event_tab/team_task_home_screens/team_task_home_screen.dart';

import '../../../../../themes/app_textstyles.dart';
import 'checklist_screen/checklist_screen.dart';
import 'customers_screens/client_list_overview_screen.dart';
import 'events_screens/event_promotions_screen/event_promotion_near_by.dart';
import 'events_screens/events_overview_screen/events_overview_screen.dart';

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
      "page": null,
    },
    {
      "title": "Suppliers",
      "page": null,
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
      "page": null,
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
        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: titleANdNavigation.length,
            padding: EdgeInsets.symmetric(horizontal: 20),
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 7, mainAxisSpacing: 7, crossAxisCount: 3),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () => navigateToPage(
                    context: context,
                    pageName: titleANdNavigation[index]["page"]),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffF1F0ED),
                  ),
                  child: Center(
                    child: Text(
                      titleANdNavigation[index]["title"],
                      textAlign: TextAlign.center,
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
