import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taptoparty/themes/app_colors.dart';

class AppTextStyles {
  static TextStyle gfsDidotStyle = GoogleFonts.gfsDidot(
    fontSize: 24.sp,fontWeight: FontWeight.w400,
    color: AppColors.primaryBlack
  );
  static TextStyle plusJakartaSans = GoogleFonts.plusJakartaSans(
    fontWeight: FontWeight.w400,
    color: AppColors.primaryBlack
  );
}