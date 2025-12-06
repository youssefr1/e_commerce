import 'package:e_commerce/core/styling/app_styles.dart';
import 'package:e_commerce/core/widjets/spacing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountItem extends StatelessWidget {
  const AccountItem({super.key, required this.iconimage, required this.title, required this.onTap});
final String iconimage;
final String title;
final VoidCallback onTap;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 14.w,vertical: 8.h),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            iconimage == null ? SizedBox.shrink(): Image.asset(iconimage,height: 24,width: 24,),
            WidthSpace(16),
            Text(title ?? "",style: AppStyle.black16boldStyle.copyWith(fontSize: 19),),
            Spacer(),
            Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,size: 22,),




          ],
        ),
      ),
    );
  }
}
