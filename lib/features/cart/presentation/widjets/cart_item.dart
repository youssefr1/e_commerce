import 'package:e_commerce/core/styling/app_styles.dart';
import 'package:e_commerce/core/widjets/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: 16.h),
      child: Container(
        padding: EdgeInsets.all(16.sp),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 0.5
          ),
          borderRadius: BorderRadius.circular(8.r)
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 83.w,
              height: 79.h,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(8.r)
              ,
              ),
            ),
            WidthSpace(16),
            Expanded(
              child: Column(
                children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('T-shirt',style: AppStyle.black16boldStyle,),
                        Icon(Icons.delete,color: Colors.red,
                        )
                      ],
                    ),
                    HeightSpace(30),
                  Row(
                    children: [
                      Text('\$1200',style: AppStyle.grey12w500Style.copyWith(fontSize: 15),),
                      Spacer(),
                      Row(
                        children: [
                          InkWell(
                            onTap: (){},
                            child: Container(
                              alignment: Alignment.center,
                              width: 24.w,
                              height: 24.h,
                              decoration: BoxDecoration(

                                border: Border.all(color: Colors.grey,width: 0.5),
                                borderRadius: BorderRadius.circular(8.r)
                              ),
                              child: Icon(Icons.add),
                            ),
                          ),
                          WidthSpace(8),
                          Text('1',style: AppStyle.black16boldStyle,),
                          WidthSpace(8),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              alignment: Alignment.center,
                              width: 24.w,
                              height: 24.h,
                              decoration: BoxDecoration(

                                  border: Border.all(color: Colors.grey,width: 0.5),
                                  borderRadius: BorderRadius.circular(8.r)
                              ),
                              child: Icon(Icons.remove),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
