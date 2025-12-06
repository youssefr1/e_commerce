import 'package:e_commerce/core/styling/app_styles.dart';
import 'package:e_commerce/core/widjets/primary_button.dart';
import 'package:e_commerce/core/widjets/spacing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widjets/back_button_widget.dart';
import '../widjets/cart_item.dart';
import '../widjets/title_price_widjet.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Cart'),
          centerTitle: true,
          leading: Container(),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: SingleChildScrollView(
            child: Column(
                children: [
                  CartItem(),
                  CartItem(),
                  CartItem(),
                  CartItem(),
                  HeightSpace(20),
                  TitlePriceWidjet(title: 'Sub total', price: '1200\$',),
                  HeightSpace(16),
                  TitlePriceWidjet(title: 'VAT(16%)', price: '1200\$',),
                  HeightSpace(16),
                  TitlePriceWidjet(title: 'Shipping Fee', price: '1200\$',),
                  HeightSpace(16),
                  Divider(),
                  TotlaPriceWidjet(title: 'Total', price: '1200\$',),
                  HeightSpace(30),
                  PrimaryButton(
                    fontSize: 18,
                    trailing: Icon(Icons.arrow_forward_rounded,color: Colors.white,size:24,),
                    buttonText: 'Go to Checkout',
                    onPressed: () {},

                  ),
                  HeightSpace(20),


                ]),
          ),
        ),
      ),
    );
  }
}
