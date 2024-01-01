import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sgt_owner/style/font_style.dart';

class CustomBanner {
  CustomBanner._();

  static showBanner(
      BuildContext context, String message, Color bgColor, Duration? duration) {
    ScaffoldMessenger.of(context).showMaterialBanner(MaterialBanner(
        content: SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.cloud_off_outlined,
                color: Colors.white,
                size: 20.sp,
              ),
              SizedBox(
                width: 4.w,
              ),
              Text(
                message,
                style: AppFontStyle.mediumTextStyle(Colors.white, 14.sp),
              )
            ],
          ),
        ),
        actions: [Container()]));
  }
}
