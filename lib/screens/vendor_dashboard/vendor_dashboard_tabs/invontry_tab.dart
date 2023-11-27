import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
class inventoryTab extends StatelessWidget {
  const inventoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: Container(
            height: 300.h,
            decoration: BoxDecoration(
                color: Color(0xffF1F0ED),
                borderRadius: BorderRadius.circular(10)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('Item',style: AppTextStyles.plusJakartaSans.copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),)
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Container(
            height: 300.h,
            decoration: BoxDecoration(
                color: Color(0xffF1F0ED),
                borderRadius: BorderRadius.circular(10)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('Quantity',style: AppTextStyles.plusJakartaSans.copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),)
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Container(
            height: 300.h,
            decoration: BoxDecoration(
                color: Color(0xffF1F0ED),
                borderRadius: BorderRadius.circular(10)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('Required',style: AppTextStyles.plusJakartaSans.copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                  ),)
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Container(
            height: 300.h,
            decoration: BoxDecoration(
                color: Color(0xffF1F0ED),
                borderRadius: BorderRadius.circular(10)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('Order',style: AppTextStyles.plusJakartaSans.copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
