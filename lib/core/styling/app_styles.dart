import 'dart:ui';

import 'package:e_commerce/core/styling/app_color.dart';
import 'package:e_commerce/core/styling/app_fonts.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyle{
  static  TextStyle primaryHeadLineStyle = TextStyle(
    fontFamily: AppFonts.mainFontname,
    fontSize: 30.sp,
    color: AppColor.blackColor,
    fontWeight: FontWeight.bold
  );
  static TextStyle subTitleStyle = TextStyle(
      fontFamily: AppFonts.mainFontname,
      fontSize: 16.sp,
      color: AppColor.secondaryColor,
      fontWeight: FontWeight.w400
  );
  static TextStyle black16w500Style = TextStyle(
      fontFamily: AppFonts.mainFontname,
      fontSize: 17.sp,
      color: AppColor.blackColor,
      fontWeight: FontWeight.w500
  );

  static TextStyle grey12w500Style = TextStyle(
      fontFamily: AppFonts.mainFontname,
      fontSize: 12.sp,
      color: AppColor.greyColor,
      fontWeight: FontWeight.w500
  );

  static TextStyle black16boldStyle = TextStyle(
      fontFamily: AppFonts.mainFontname,
      fontSize: 16.sp,
      color: AppColor.blackColor,
      fontWeight: FontWeight.bold
  );

}