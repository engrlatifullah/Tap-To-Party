import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taptoparty/themes/app_textstyles.dart';

import '../themes/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final Color backgroundColor;
  final Color textColor;

  const PrimaryButton(
      {Key? key,
      required this.title,
      required this.onTap,
      this.backgroundColor = AppColors.mainColor,
      this.textColor = const Color(0xFFFFFFFF)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45.h,
        alignment: Alignment.center,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: backgroundColor),
        child: Text(
          title,
          style: AppTextStyles.plusJakartaSans.copyWith(
              fontWeight: FontWeight.w400, fontSize: 16.sp, color: textColor),
        ),
      ),
    );
  }
}
