import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styling/app_styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key, required this.categoryName,
  });
final String categoryName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: 8.w,
      ),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 7.h,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 1.w,
          ),
          borderRadius: BorderRadius.circular(
            10.r,
          ),
        ),
        child: Text(
          categoryName,
          style: AppStyle.black16w500Style,
        ),
      ),
    );
  }
}
