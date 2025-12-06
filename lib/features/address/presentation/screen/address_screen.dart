
import 'package:e_commerce/core/styling/app_styles.dart';
import 'package:e_commerce/core/widjets/spacing.dart';
import 'package:e_commerce/features/address/presentation/widjets/address_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';



class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Address'),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(),
              HeightSpace(16),
              Text(
                'Saved Address',
                style: AppStyle.black16boldStyle.copyWith(fontSize: 18.sp),
              ),
              HeightSpace(24),
              Expanded(
                child: ListView(
                  children: [
                    AddressItem(address: 'Home', addressDetails: '925 S Chugach St #APT 10, Alas...'),
                    AddressItem(address: 'Home', addressDetails: '925 S Chugach St #APT 10, Alas...'),
                    AddressItem(address: 'Home', addressDetails: '925 S Chugach St #APT 10, Alas...'),
                    AddressItem(address: 'Home', addressDetails: '925 S Chugach St #APT 10, Alas...'),
                    AddressItem(address: 'Home', addressDetails: '925 S Chugach St #APT 10, Alas...'),
                    AddressItem(address: 'Home', addressDetails: '925 S Chugach St #APT 10, Alas...'),
                    AddressItem(address: 'Home', addressDetails: '925 S Chugach St #APT 10, Alas...'),
                    AddressItem(address: 'Home', addressDetails: '925 S Chugach St #APT 10, Alas...'),
                    AddressItem(address: 'Home', addressDetails: '925 S Chugach St #APT 10, Alas...'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
