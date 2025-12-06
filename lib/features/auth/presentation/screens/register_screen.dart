
import 'package:e_commerce/core/routing/app_routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/styling/app_color.dart';
import '../../../../core/styling/app_styles.dart';
import '../../../../core/widjets/back_button_widget.dart';
import '../../../../core/widjets/custom_text_field.dart';
import '../../../../core/widjets/primary_button.dart';
import '../../../../core/widjets/spacing.dart';
import '../widgets/custom_or_login_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController username;
  late TextEditingController password;
  late TextEditingController confirmPassword;
  late TextEditingController fullName;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    username = TextEditingController();
    password = TextEditingController();
    confirmPassword = TextEditingController();
    fullName = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeightSpace(28),
                SizedBox(
                  width: 335.w,
                  child: Text(
                    "Create Your Account",
                    style: AppStyle.primaryHeadLineStyle,
                  ),
                ),
                const HeightSpace(8),
                SizedBox(
                  width: 335.w,
                  child: Text(
                    "Let's Create Your Account",
                    style: AppStyle.grey12w500Style.copyWith(fontSize: 15),
                  ),),
                const HeightSpace(32),
                Text('Full Name',style: AppStyle.black16w500Style,),
                const HeightSpace(8),
                CustomTextField(
                  controller: fullName,
                  hintText: "Enter Your full name",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Your full name";
                    }
                    return null;
                  },
                ),
                const HeightSpace(8),

                Text('User Name',style: AppStyle.black16w500Style,),
                const HeightSpace(8),
                CustomTextField(
                  controller: username,
                  hintText: "Enter Your email address",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Your full name";
                    }
                    return null;
                  },
                ),
                const HeightSpace(15),
                Text('Password',style: AppStyle.black16w500Style,),
                const HeightSpace(8),
                CustomTextField(
                  hintText: "Enter Your Password",
                  controller: password,
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: AppColor.greyColor,
                    size: 20.sp,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Your Password";
                    }
                    if (value.length < 8) {
                      return "Password must be at least 8 characters";
                    }
                    return null;
                  },
                ),

                const HeightSpace(15),
                Text('Confirm Password',style: AppStyle.black16w500Style,),
                const HeightSpace(8),
                CustomTextField(
                  hintText: "Enter Your Password",
                  controller: confirmPassword,
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: AppColor.greyColor,
                    size: 20.sp,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Your Password";
                    }
                    if (value.length < 8) {
                      return "Password must be at least 8 characters";
                    }
                    return null;
                  },
                ),

                const HeightSpace(55),
                PrimaryButton(
                  fontSize: 18.sp,
                  buttonText: "Create Account",
                  onPressed: () {
                    //    if (formKey.currentState!.validate()) {
                    // GoRouter.of(context).pushNamed(AppRoute.verifyOtpScreen);
                    //  }
                  },
                ),
                Spacer(),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(Approutes.loginScreen);
                    },
                    child: RichText(
                      text: TextSpan(
                        text: "Already have an account  ",
                        style: AppStyle.black16boldStyle
                            .copyWith(color: AppColor.secondaryColor),
                        children: [
                          TextSpan(
                            text: "Login",
                            style: AppStyle.black16boldStyle.copyWith(color: AppColor.primaryColor,decoration: TextDecoration.underline),)
                        ],
                      ),
                    ),
                  ),
                ),
                const HeightSpace(16),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
