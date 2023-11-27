import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taptoparty/screens/vendor_dashboard/vendor_dashboard_tabs/events_tab.dart';
import 'package:taptoparty/screens/vendor_dashboard/vendor_dashboard_tabs/invontry_tab.dart';
import 'package:taptoparty/screens/vendor_dashboard/vendor_dashboard_tabs/task_tab.dart';
import 'package:taptoparty/screens/vendor_dashboard/vendor_dashboard_tabs/teams_tab.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
class VendorDashboard extends StatefulWidget {
  const VendorDashboard({super.key});

  @override
  State<VendorDashboard> createState() => _VendorDashboardState();
}

class _VendorDashboardState extends State<VendorDashboard> {

  final List pages = [
    EventsTab(),
    TeamTab(),
    TaskTab(),
    inventoryTab(),
  ];

  Color ? color;

  final List tabsTitle = ["Events","Team","Task","Inventory"];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Vendor Dashboard',style: AppTextStyles.gfsDidotStyle.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),),
                SizedBox(height: 30.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(tabsTitle.length, (index){
                    return GestureDetector(
                      onTap: (){
                        _currentIndex = index;

                        setState(() {

                        });
                      },
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 8,vertical: 10),
                         decoration: BoxDecoration(
                           color: _currentIndex == index ? Color(0xFFA99F96) : Colors.transparent,
                           border: Border.all(
                             color: _currentIndex == index ? Colors.black : Colors.transparent,

                           )
                         ),
                          child: Text(tabsTitle[index],style: AppTextStyles.plusJakartaSans,)),
                    );
                  }),
                ),

                SizedBox(height: 30.h),

                pages[_currentIndex],

              ],
            ),
          ),
        ),
      ),
    );
  }
}
