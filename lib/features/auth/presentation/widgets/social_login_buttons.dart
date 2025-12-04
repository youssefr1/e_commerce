import 'package:e_commerce/features/auth/presentation/widgets/custom_icon_button.dart';

import 'package:flutter/material.dart';

import '../../../../core/styling/app_assets.dart';

class CustomSocialLoginIcons extends StatelessWidget {
  const CustomSocialLoginIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconButton(onTap: () {}, iconPath: AppAssets.facebookSVGIcon),
        CustomIconButton(onTap: () {}, iconPath: AppAssets.googleSVGIcon),
        CustomIconButton(onTap: () {}, iconPath: AppAssets.appleSVGIcon),
      ],
    );
  }
}
