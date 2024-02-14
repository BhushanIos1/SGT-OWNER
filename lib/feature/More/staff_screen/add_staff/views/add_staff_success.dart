import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/feature/authentication/login/views/login.dart';
import 'package:sgt_owner/shared/widgets/custom_buttons.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class addStaffSuccessPopUp extends StatelessWidget {
  const addStaffSuccessPopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actionsAlignment: MainAxisAlignment.center,
      backgroundColor: AppColors.white,
      title: Column(children: [
        Image.asset(
          'assets/add_staff_success.png',
          width: 140.w,
          height: 105.h,
          fit: BoxFit.contain,
        ),
        SizedBox(
              height: 16.h,
            ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Staff Profile successfully Created!',
              style:
                  AppFontStyle.semiboldTextStyle(AppColors.primaryColor, 17.sp),
            ),
            SizedBox(
              height: 16.h,
            ),
          ],
        ),
      ]),
      actions: [
        Container(
          width: 127.w,
          child: AppButton(
            onTaps: () {
              // Get.toNamed("/login");
            },
            backgoundColor: AppColors.primaryColor,
            textColor: AppColors.white,
            titleText: 'Ok',
            isIcon: false,
          ),
        ),
      ],
    );
  }
}
