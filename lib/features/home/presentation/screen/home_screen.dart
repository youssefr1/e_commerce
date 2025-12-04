import 'package:e_commerce/core/routing/app_routing.dart';
import 'package:e_commerce/core/styling/app_color.dart';
import 'package:e_commerce/core/widjets/custom_text_field.dart';
import 'package:e_commerce/core/widjets/primary_button.dart';
import 'package:e_commerce/core/widjets/spacing.dart';
import 'package:e_commerce/features/home/presentation/widjets/category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/styling/app_styles.dart';
import '../widjets/product_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeightSpace(28),
          SizedBox(
            width: 270.w,
            child: Text(
              "Discover",
              style: AppStyle.primaryHeadLineStyle.copyWith(
                fontSize: 32.sp,
              ),
            ),
          ),
          HeightSpace(16),
          Row(
            children: [
              CustomTextField(
                width: 270.w,
                hintText: 'Search for cloths',
              ),
              WidthSpace(8),
              Container(
                width: 50.w,
                height: 50.h,
                decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Icon(
                  Icons.search_rounded,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
          ),
          HeightSpace(16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryItem(categoryName: 'All'),
                CategoryItem(categoryName: 'All'),
                CategoryItem(categoryName: 'All'),
                CategoryItem(categoryName: 'All'),
                CategoryItem(categoryName: 'All'),
              ],
            ),
          ),
          HeightSpace(16),
          Expanded(
            child: GridView(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16.sp,
                    childAspectRatio: 0.7
                  ),
              children: [
                ProductItem(title: 'title', price: '120\$',ontap: (){
                  GoRouter.of(context).push(Approutes.productScreen);
                },),
                ProductItem(title: 'title', price: '130\$'),
                ProductItem(title: 'title', price: '130\$'),
                ProductItem(title: 'title', price: '130\$'),
                ProductItem(title: 'title', price: '130\$'),
                ProductItem(title: 'title', price: '130\$'),
              ],

            ),
          ),
        ],
      ),
    );
  }
}
