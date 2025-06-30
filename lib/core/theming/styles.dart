import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_hub/core/theming/colors.dart';

class TextStyles{
  static TextStyle font32BlackBold = TextStyle(
    color: Color(0xff242424),
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font32blueBold = TextStyle(
    color: AppColors.mainBlue,
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle font24blueBold = TextStyle(
    color: AppColors.mainBlue,
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
  );
  
  static TextStyle font16WhiteSemiBold = TextStyle(
    color: Colors.white,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle font10GrayRegular = TextStyle(
    color: AppColors.mainGray,
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
  );
}