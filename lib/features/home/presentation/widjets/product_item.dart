import 'package:e_commerce/core/styling/app_styles.dart';
import 'package:e_commerce/core/widjets/spacing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.title, required this.price, this.ontap});
  final String title ;
  final String price;
  final Function? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap as void Function()?,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: Container(
              width:150.w,
              height: 150.h,
              color: Colors.grey,
            ),
          ),
          HeightSpace(8),
          Text(title,style: AppStyle.black16w500Style,),
          HeightSpace(8),
          Text(price,style: AppStyle.grey12w500Style.copyWith(fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
