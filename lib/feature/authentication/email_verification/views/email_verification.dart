// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/feature/authentication/email_verification/controller/email_verification_controller.dart';
import 'package:sgt_owner/feature/authentication/email_verification/controller/timer_controller.dart';
import 'package:sgt_owner/shared/widgets/custom_appbar.dart';
import 'package:sgt_owner/shared/widgets/custom_buttons.dart';
import 'package:sgt_owner/shared/widgets/custom_textfield.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class EmailVerificationPage extends StatefulWidget {
  const EmailVerificationPage({super.key});

  @override
  State<EmailVerificationPage> createState() => _EmailVerificationPageState();
}

class _EmailVerificationPageState extends State<EmailVerificationPage> {
  final emailController = Get.put(EmailVerificationController());
  final timerController = Get.put(TimerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CustomAppBar(
        titleText: 'Email verification',
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
                        padding: EdgeInsets.only(top: 25.h, left: 8, bottom: 5.h),
                        child: Text(
                          'Verify your email',
                          style: AppFontStyle.semiboldTextStyle(
                              AppColors.textColor, 16.sp),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8, bottom: 5.h, right: 8),
                        child: Text(
                          'To continue, complete this verification step. We’ve sent an OTP to the email ${Get.parameters['email'].toString()}. Please enter it below to complete verification.',
                          maxLines: 3,
                          style: AppFontStyle.regularTextStyle(
                              AppColors.textColor, 12.sp),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8, vertical: 16.h),
                          child: Form(
                            key: emailController.emailFormKey,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            child: AppTextField(
                              controller: emailController.emailController,
                              labelText: "OTP",
                              hintText: "Enter OTP",
                              onSaved: (value) {
                                emailController.email = value!;
                              },
                              validator: (value) {
                                return emailController.validateOTP(value!);
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
              Padding(
                padding: EdgeInsets.only(top: 18.h, left: 18),
                child: Row(
                  children: [
                    Text(
                      'Re-send OTP in ',
                      style: AppFontStyle.regularTextStyle(
                          AppColors.textColor, 12.sp),
                    ),
                    Obx(
                      () => Text(
                        timerController.time.value,
                        style: AppFontStyle.semiboldTextStyle(
                            AppColors.primaryColor, 12.sp),
                      ),
                    )
                  ],
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
                        emailController.checkLogin();
                      },
                      backgoundColor: emailController.btnEnabled.value
                          ? AppColors.primaryColor
                          : AppColors.disableColor,
                      textColor: AppColors.white,
                      titleText: "Continue"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
