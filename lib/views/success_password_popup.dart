import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/feature/authentication/login/views/login.dart';
import 'package:sgt_owner/shared/widgets/custom_buttons.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class ShouldPopAlertDialog extends StatelessWidget {
  const ShouldPopAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.white,
      title: Center(
        child: Column(children: [
          Image.asset(
            'assets/success.png',
            width: 60.w,
            height: 60.h,
            fit: BoxFit.contain,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    'Successfully password reset!',
                    style:
                        AppFontStyle.semiboldTextStyle(AppColors.black, 18.sp),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'You can now use your new password to Log In to your account.',
                    maxLines: 3,
                    style:
                        AppFontStyle.regularTextStyle(AppColors.black, 14.sp),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
      actions: [
        AppButton(
          onTaps: () {
            Get.toNamed("/login");
          },
          backgoundColor: AppColors.primaryColor,
          textColor: AppColors.white,
          titleText: 'Back to login',
          isIcon: false,
        ),
      ],
    );
  }
}
