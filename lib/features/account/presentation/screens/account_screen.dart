import 'package:e_commerce/core/routing/app_routing.dart';
import 'package:e_commerce/core/styling/app_assets.dart';
import 'package:e_commerce/core/styling/app_styles.dart';
import 'package:e_commerce/core/widjets/primary_button.dart';
import 'package:e_commerce/core/widjets/spacing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/widjets/back_button_widget.dart';
import '../widjets/account_item.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Account'),
          centerTitle: true,
          leading: Container()
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                ),
                child: Divider(),
              ),
              AccountItem(
                iconimage: AppAssets.myOrder,
                title: 'My Orders',
                onTap: () {},
              ),
              HeightSpace(16),
              Divider(
                color: Colors.grey.withOpacity(0.5),
                thickness: 6,
                height: 2,
              ),
              HeightSpace(8),
              AccountItem(
                iconimage: AppAssets.myDetails,
                title: 'My Details',
                onTap: () {},
              ),

              Divider(indent: 58, endIndent: 25),
              HeightSpace(8),

              AccountItem(
                iconimage: AppAssets.myAddress,
                title: 'My Address',
                onTap: () {
                  context.pushNamed(
                    Approutes.addressScreen,
                  );
                },
              ),

              Divider(indent: 58, endIndent: 25),
              HeightSpace(8),
              AccountItem(
                iconimage: AppAssets.fQS,
                title: 'FQS',
                onTap: () {},
              ),

              Divider(indent: 58, endIndent: 25),
              HeightSpace(8),
              AccountItem(
                iconimage: AppAssets.helpCenter,
                title: 'HelpCenter',
                onTap: () {},
              ),
              HeightSpace(16),

              Divider(
                color: Colors.grey.withOpacity(0.5),
                thickness: 6,
                height: 2,
              ),
              HeightSpace(16),
              AccountItem(
                iconimage: AppAssets.logout,
                title: 'Logout',
                onTap: () {},
              ),

              Divider(indent: 58, endIndent: 25),
            ],
          ),
        ),
      ),
    );
  }
}
