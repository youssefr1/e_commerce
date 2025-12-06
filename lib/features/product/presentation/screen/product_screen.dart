import 'package:e_commerce/core/routing/app_routing.dart';
import 'package:e_commerce/core/styling/app_styles.dart';
import 'package:e_commerce/core/widjets/primary_button.dart';
import 'package:e_commerce/core/widjets/spacing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/widjets/back_button_widget.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Details'),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    HeightSpace(20),
                    Container(
                      width: 341.w,
                      height: 368.h,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(
                          10.r,
                        ),
                      ),
                    ),
                    HeightSpace(12),
                    Text(
                      'T-shirt',
                      style: AppStyle.black16w500Style
                          .copyWith(fontSize: 24.sp),
                    ),
                    HeightSpace(8),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        WidthSpace(2),
                        Text(
                          '4.5/5',
                          style: AppStyle.black16boldStyle
                              .copyWith(
                                decoration:
                                    TextDecoration.underline,
                              ),
                        ),
                        WidthSpace(3),
                        Text(
                          '(45 Review)',
                          style: AppStyle.grey12w500Style
                              .copyWith(fontSize: 14),
                        ),
                      ],
                    ),
                    HeightSpace(8),
                    Text(
                      ' Shirt . Good for All Men and Suits for All of ThemBlue T Shirt . Good for All Men and Suits for All of Them.Blue T Shirt . Good for All Men and Suits for All of ThemBlue T Shirt . Good for All Men and Suits for All of Them.Blue T Shirt . Good for All Men and Suits for All of ThemBlue T Shirt . Good for All Men and Suits for All of Them.Blue T Shirt . Good for All Men and Suits for All of ThemBlue T Shirt . Good for All Men and Suits for All of Them.Blue T Shirt . Good for All Men and Suits for All of ThemBlue T Shirt . Good for All Men and Suits for All of Them.Blue T Shirt . Good for All Men and Suits for All of ThemBlue T Shirt . Good for All Men and Suits for All of Them.Blue T Shirt . Good for All Men and Suits for All of ThemBlue T Shirt . Good for All Men and Suits for All of Them.Blue T Shirt . Good for All Men and Suits for All of ThemBlue T Shirt . Good for All Men and Suits for All of Them.Blue T Shirt . Good for All Men and Suits for All of Them',
                      style: AppStyle.grey12w500Style
                          .copyWith(fontSize: 16),
                    ),
                    HeightSpace(100),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.w,
                ),
                color: Colors.white,
                width:
                    MediaQuery.of(context).size.width ,
                child: Column(
                  children: [
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            Text(
                              'price',
                              style: AppStyle.grey12w500Style
                                  .copyWith(fontSize: 16.sp),
                            ),
                            HeightSpace(8),
                            Text(
                              '\$1125',
                              style: AppStyle.black16w500Style
                                  .copyWith(fontSize: 24.sp),
                            ),
                          ],
                        ),
                        WidthSpace(16),
                        PrimaryButton(
                          fontSize: 18,
                          icon: Icon(Icons.shopping_cart,color: Colors.white,size: 18,),
                    width:  MediaQuery.of(context).size.width *0.65,
                          buttonText: 'Add to cart',
                          onPressed: () {
                            context.pushNamed(Approutes.cartScreen);
                          },

                        ),
                        
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
