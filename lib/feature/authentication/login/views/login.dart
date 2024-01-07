// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/feature/authentication/login/controller/login_controller.dart';
import 'package:sgt_owner/feature/authentication/login/controller/password_controller.dart';
import 'package:sgt_owner/shared/widgets/custom_appbar.dart';
import 'package:sgt_owner/shared/widgets/custom_buttons.dart';
import 'package:sgt_owner/shared/widgets/custom_textfield.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final loginController = Get.put(LoginController());
  PasswordController pCTRL = Get.put(PasswordController());

  final _emailFocus = FocusNode();
  final _passFocus = FocusNode();

  @override
  void dispose() {
    super.dispose();
    _emailFocus.dispose();
    _passFocus.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CustomAppBar(
        titleText: 'Login',
        isLeading: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 16.h,
                ),
                Center(
                  child: Container(
                    width: Get.width - 32.w,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.all(Radius.circular(6.r)),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.disableColor.withAlpha(50),
                            blurRadius: 1.0,
                          )
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16.h, left: 8),
                          child: Image.asset(
                            'assets/sgt_logo.png',
                            width: 73.w,
                            height: 31.h,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 25.h, left: 8, bottom: 5.h),
                          child: Text(
                            'Welcome!',
                            style: AppFontStyle.semiboldTextStyle(
                                AppColors.textColor, 16.sp),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8, vertical: 12.h),
                          child: Form(
                            key: loginController.emailFormKey,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            child: AppTextField(
                              controller: loginController.emailController,
                              label: "Email",
                              hintText: "Enter Email",
                              keyboardType: TextInputType.emailAddress,
                              focusNode: _emailFocus,
                              onSaved: (value) {
                                loginController.email = value!;
                              },
                              validator: (value) {
                                return loginController.validateEmail(value!);
                              },
                              onTapOutside: (event) {
                                FocusScope.of(context).unfocus();
                              },
                              onFieldSubmitted: (value) {
                                FocusScope.of(context).requestFocus(_passFocus);
                              },
                            ),
                          ),
                        ),
                        Padding(
                            padding:
                                EdgeInsets.only(left: 8, right: 8, bottom: 16.h),
                            child: Obx(
                              () => Form(
                                key: loginController.passFormKey,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                child: AppTextField(
                                  controller:
                                      loginController.passwordController,
                                  label: "Password",
                                  hintText: "Enter Password",
                                  obsecure: pCTRL.isHidden.value,
                                  suffix: IconButton(
                                    icon: Icon(pCTRL.isHidden.value
                                        ? Icons.visibility_off
                                        : Icons.visibility),
                                    color: AppColors.grayColor,
                                    iconSize: 24,
                                    onPressed: () {
                                      pCTRL.isHidden.value =
                                          !pCTRL.isHidden.value;
                                    },
                                  ),
                                  keyboardType: TextInputType.visiblePassword,
                                  focusNode: _passFocus,
                                  onSaved: (value) {
                                    loginController.password = value!;
                                  },
                                  validator: (value) {
                                    return loginController
                                        .validatePassword(value!);
                                  },
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 18.h, left: 18),
                  child: Row(
                    children: [
                      Text(
                        'Forgot your password? ',
                        style: AppFontStyle.regularTextStyle(
                            AppColors.textColor, 12.sp),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed("/reset");
                        },
                        child: Text(
                          'Reset here',
                          style: AppFontStyle.semiboldTextStyle(
                              AppColors.primaryColor, 12.sp),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 255.h,
            ),
            Column(
              children: [
                Obx(() => AppButton(
                    onTaps: () {
                      loginController.checkLogin();
                    },
                    backgoundColor: loginController.isEmailValid.value
                        ? AppColors.primaryColor
                        : AppColors.disableColor,
                    textColor: AppColors.white,
                    titleText: "Log In")),
                SizedBox(
                  height: 26.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account? ',
                      style: AppFontStyle.regularTextStyle(
                          AppColors.textColor, 14.sp),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Sign Up',
                        style: AppFontStyle.boldTextStyle(
                            AppColors.primaryColor, 14.sp),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 22.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Terms & Conditions | ',
                        style: AppFontStyle.semiboldTextStyle(
                            AppColors.primaryColor, 12.sp),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Privacy Policy',
                        style: AppFontStyle.semiboldTextStyle(
                            AppColors.primaryColor, 12.sp),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 32.h,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
