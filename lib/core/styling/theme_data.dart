import 'package:e_commerce/core/styling/app_color.dart';
import 'package:e_commerce/core/styling/app_fonts.dart';
import 'package:e_commerce/core/styling/app_styles.dart';

import 'package:flutter/material.dart';

class AppTheme{
  static final lightTheme = ThemeData(
    primaryColor: AppColor.primaryColor,
    scaffoldBackgroundColor: AppColor.scafoldColor,
    fontFamily: AppFonts.mainFontname,
    textTheme: TextTheme(
      titleLarge: AppStyle.primaryHeadLineStyle,
      titleMedium: AppStyle.subTitleStyle,

    ),
    buttonTheme:
      ButtonThemeData(
        buttonColor: AppColor.primaryColor,
        disabledColor: AppColor.secondaryColor
      )
  );
}