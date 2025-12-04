
import 'package:flutter/cupertino.dart' hide Size;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styling/app_color.dart';

class PrimaryOutlineButton extends StatelessWidget {
  const PrimaryOutlineButton({
    super.key,
    this.onPressed,
    this.fontSize,
    this.textColor,
    this.buttonText,
    this.borderColors,
    this.width,
    this.hight,
    this.boarder,
  });

  final String? buttonText;
  final Color? borderColors;
  final double? width;
  final double? fontSize;
  final double? hight;
  final double? boarder;
  final Color? textColor;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        fixedSize: Size(width ?? 331.w ,hight ?? 50.h),
      //  backgroundColor: buttonColor ?? AppColor.primaryColor,
          side: BorderSide(color:borderColors ?? AppColor.primaryColor ,width: 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(boarder??8.r ),
        ),
      ),
      onPressed: onPressed ?? (){},
      child: Text(
        buttonText ?? 'Login',
        style: TextStyle(
        fontWeight: FontWeight.bold,
          fontSize: fontSize,
          color: textColor ?? AppColor.primaryColor,
        ),
      ),
    );
  }
}
