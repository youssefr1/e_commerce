
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
import '../widgets/social_login_buttons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController password;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController = TextEditingController();
    password = TextEditingController();
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
                    "Login To Your Account",
                    style: AppStyle.primaryHeadLineStyle,
                  ),
                ),
                const HeightSpace(8),
            SizedBox(
              width: 335.w,
              child: Text(
                "It's Greet to see you agian",
                style: AppStyle.grey12w500Style.copyWith(fontSize: 15),
              ),),
                const HeightSpace(32),
                Text('UserName',style: AppStyle.black16w500Style,),
                const HeightSpace(8),
                CustomTextField(
                  controller: emailController,
                  hintText: "Enter Your User Name",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Your Email";
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

                const HeightSpace(55),
                PrimaryButton(
                  fontSize: 18.sp,
                  buttonText: "Sign In",
                  onPressed: () {
                    //    if (formKey.currentState!.validate()) {
                     GoRouter.of(context).push(Approutes.mainScreen);
                    //  }
                  },
                ),
               Spacer(),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(Approutes.registerScreen);
                      
                    },
                    child: RichText(
                      text: TextSpan(
                        text: "Don't have an account? ",
                        style: AppStyle.black16boldStyle
                            .copyWith(color: AppColor.secondaryColor),
                        children: [
                          TextSpan(
                              text: "Register Now",
                              style: AppStyle.black16boldStyle.copyWith(color: AppColor.primaryColor),)
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
