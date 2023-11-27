import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../themes/app_textstyles.dart';

class SelectedCategoryTab extends StatefulWidget {
  const SelectedCategoryTab({super.key});

  @override
  State<SelectedCategoryTab> createState() => _SelectedCategoryTabState();
}

class _SelectedCategoryTabState extends State<SelectedCategoryTab> {
  var dropDownValue;
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
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    items: items.map((e) {
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
                    hint: FittedBox(child: Text("Select Category")),
                    value: dropDownValue,
                    isExpanded: true,
                    onChanged: (v) {
                      dropDownValue = v;
                      setState(() {});
                    }),
              ),
            ),
          ),
          SizedBox(height: 20),
          ...List.generate(5, (index) {
            return Container(
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 100.w,
                    height: 100.h,
                    child: Image.asset("images/1.jpg",fit: BoxFit.cover,),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Great Performance",
                          style:
                              AppTextStyles.gfsDidotStyle.copyWith(fontSize: 16),
                        ),
                        Text(
                          "New York",
                          style: AppTextStyles.gfsDidotStyle.copyWith(
                              fontSize: 13, fontStyle: FontStyle.italic),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "We believe in collaborative commitment to service, innovation and quality. We believe in serving fresher, tastier, beautiful plates of seasonal and sustainably harvested foods.",
                          style: AppTextStyles.gfsDidotStyle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          })
        ],
      ),
    );
  }
}
