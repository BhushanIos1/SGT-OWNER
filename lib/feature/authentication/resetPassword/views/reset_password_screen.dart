// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/feature/authentication/resetPassword/controller/reset_password_controller.dart';
import 'package:sgt_owner/shared/widgets/custom_appbar.dart';
import 'package:sgt_owner/shared/widgets/custom_buttons.dart';
import 'package:sgt_owner/shared/widgets/custom_textfield.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<ResetPasswordPage> {
  final loginController = Get.put(ResetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CustomAppBar(
        titleText: 'Reset',
        isLeading: true,
      ),
      body: Stack(
        alignment: Alignment.topCenter,
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
                        padding: EdgeInsets.only(top: 25.h, left: 8, bottom: 5),
                        child: Text(
                          'Reset your password',
                          style: AppFontStyle.semiboldTextStyle(
                              AppColors.textColor, 17.sp),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8, bottom: 5, right: 8),
                        child: Text(
                          'Enter the email address associated with your SGT account.',
                          maxLines: 2,
                          style: AppFontStyle.regularTextStyle(
                              AppColors.textColor, 14.sp),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8, vertical: 16.h),
                          child: Form(
                            key: loginController.emailFormKey,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            child: AppTextField(
                              controller: loginController.emailController,
                              labelText: "Email",
                              hintText: "Enter Email",
                              keyboardType: TextInputType.emailAddress,
                              onSaved: (value) {
                                loginController.email = value!;
                              },
                              validator: (value) {
                                return loginController.validateEmail(value!);
                              },
                              onTapOutside: (event) {
                                FocusScope.of(context).unfocus();
                              },
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 43.h,
            child: Column(
              children: [
                Obx(
                  () => AppButton(
                      onTaps: () {
                        loginController.checkLogin();
                      },
                      backgoundColor: loginController.btnEnabled.value
                          ? AppColors.primaryColor
                          : AppColors.disableColor,
                      textColor: AppColors.white,
                      titleText: "Send Reset Link"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
