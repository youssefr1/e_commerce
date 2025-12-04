
import 'package:e_commerce/core/widjets/spacing.dart';
import 'package:flutter/cupertino.dart' hide Size;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styling/app_color.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    this.onPressed,
    this.fontSize,
    this.textColor,
    this.buttonText,
    this.buttonColor,
    this.width,
    this.hight,
    this.boarder, this.icon,
  });

  final String? buttonText;
  final Color? buttonColor;
  final double? width;
  final double? fontSize;
  final double? hight;
  final double? boarder;
  final Color? textColor;
  final void Function()? onPressed;
  final Widget? icon ;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width ?? 331.w ,hight ?? 50.h),
        backgroundColor: buttonColor ?? AppColor.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(boarder??8.r ),

        ),

      ),
      onPressed: onPressed ?? (){},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon !=null ? icon! : SizedBox.shrink(),
          icon !=null ? WidthSpace(8) : SizedBox.shrink(),
          Text(
            buttonText ?? '',
            style: TextStyle(
              fontWeight: FontWeight.bold,

              fontSize: fontSize,
              color: textColor ?? AppColor.scafoldColor,
            ),
          ),
        ],
      ),
    );
  }
}
