import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';
import '../../../themes/app_colors.dart';
import '../../customer_dashbord/event_catogoris.dart';


class EventsTab extends StatelessWidget {
  const EventsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Upcoming",style: AppTextStyles.plusJakartaSans,),
            Text("Date/Time",style: AppTextStyles.plusJakartaSans,),
          ],
        ),
        SizedBox(height: 30.h),
        ListView.builder(
          itemCount: 4,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: (){

              navigateToPage(context: context, pageName: EventCatgrios());
            },
            child: Container(
              height: 91.h,
              width: double.infinity,
              color: Color(0xffF1F0ED),
              margin: EdgeInsets.only(bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 70.h,
                    width: 100.w,
                    child: Image.asset("images/cake.png",fit: BoxFit.cover,),
                  ),

                  Text('Alice’s Birthday',style: AppTextStyles.plusJakartaSans.copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                  ),),
                  Container(
                    height: 35.h,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    alignment: Alignment.center,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8), color: AppColors.mainColor),
                    child: Text(
                      "Date/Time",
                      style: AppTextStyles.plusJakartaSans
                          .copyWith(fontWeight: FontWeight.w400, fontSize: 12.sp,color: AppColors.primaryWhite),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        ),
      ],
    );
  }
}
