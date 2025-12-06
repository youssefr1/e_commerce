import 'package:e_commerce/core/styling/app_styles.dart';
import 'package:e_commerce/core/widjets/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddressItem extends StatelessWidget {
  const AddressItem({super.key, required this.address, required this.addressDetails});
final String address;
final String addressDetails;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 8.h),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 34.w,vertical: 16.h),
        alignment: Alignment.center,
        decoration: BoxDecoration(

          border: Border.all(
            color: Colors.grey,
            width:0.7,
          ),
          borderRadius: BorderRadius.circular(8.r)

        ),
        child: Row(
          children: [
            Icon(Icons.location_on_outlined,color: Colors.grey,size: 35.sp,),
            WidthSpace(16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(address,style: AppStyle.black16w500Style,),
                HeightSpace(4),
                Text(addressDetails,style: AppStyle.grey12w500Style,)
              ],
            )

          ],
        ),

      ),
    );
  }
}
