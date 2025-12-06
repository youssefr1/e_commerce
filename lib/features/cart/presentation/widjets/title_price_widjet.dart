import 'package:e_commerce/core/styling/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitlePriceWidjet extends StatelessWidget {
  const TitlePriceWidjet({super.key, required this.title, required this.price});
final String title;
final String price;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(title,style: AppStyle.grey12w500Style.copyWith(fontSize: 15.sp,fontWeight: FontWeight.bold),),
        Spacer(),
        Text(price,style: AppStyle.black16boldStyle.copyWith(fontWeight: FontWeight.bold)),

      ],
    );
  }
}
class TotlaPriceWidjet extends StatelessWidget {
  const TotlaPriceWidjet({super.key, required this.title, required this.price});
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(title,style: AppStyle.black16boldStyle.copyWith(fontWeight: FontWeight.bold),),
        Spacer(),
        Text(price,style: AppStyle.grey12w500Style.copyWith(fontSize: 15.sp,fontWeight: FontWeight.bold)),

      ],
    );
  }
}