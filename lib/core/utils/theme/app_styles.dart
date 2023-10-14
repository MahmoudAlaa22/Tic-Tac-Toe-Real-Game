import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theme/theme_export.dart';

class AppTextStyles {
  static TextStyle headLine = TextStyle(
    color: AppColors.black,
    fontSize: 35.sp,
    fontWeight: FontWeight.bold,
    fontFamily: AppFonts.cairo,
  );
  static TextStyle title = TextStyle(
    color: AppColors.black,
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    fontFamily: AppFonts.cairo,
  );
  static TextStyle body = TextStyle(
    color: AppColors.black,
    fontSize: 20.sp,
    fontFamily: AppFonts.cairo,
  );
  static TextStyle subTitle = TextStyle(
    color: AppColors.black,
    fontSize: 18.sp,
    fontFamily: AppFonts.cairo,
  );
  static TextStyle small = TextStyle(
    color: AppColors.black,
    fontSize: 14.sp,
    fontFamily: AppFonts.cairo,
  );
}
