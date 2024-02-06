import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class OopsPopupDialog extends StatelessWidget {
  const OopsPopupDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.white,
      title: Center(
        child: Stack(
          children:[ Column(children: [
            Image.asset(
              'assets/not_success.png',
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
                      '‘SGTSUPER100',
                      maxLines: 3,
                      style: AppFontStyle.regularTextStyle(
                          AppColors.secondaryColor, 14.sp),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      'Oops Coupon Not Found',
                      style:
                          AppFontStyle.semiboldTextStyle(AppColors.black, 18.sp),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'There is no coupon code exist with this code',
                      maxLines: 3,
                      style: AppFontStyle.regularTextStyle(
                          AppColors.secondaryColor, 14.sp),
                    ),
                  ],
                ),
              ),
            ),
          ]),
          Positioned(
            top: 1.0,
            right: 1.0,
            child: IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          )
          ]
        ),
      ),
      actions: [
        // AppButton(
        //   onTaps: () {
        //     Get.toNamed("/login");
        //   },
        //   backgoundColor: AppColors.primaryColor,
        //   textColor: AppColors.white,
        //   titleText: 'Back to login',
        //   isIcon: false,
        // ),
        Center(
          child: GestureDetector(
            onTap: () => {
              Get.back()
            },
            child: Text(
              'Choose Another',
              style:
                  AppFontStyle.semiboldTextStyle(AppColors.primaryColor, 16.sp),
            ),
          ),
        ),
      ],
    );
  }
}
