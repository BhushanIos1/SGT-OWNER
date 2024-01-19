import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class CouponAppliedDialog extends StatelessWidget {
  const CouponAppliedDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.white,
      title: Center(
        child: Stack(
          children: [
            Column(children: [
              Image.asset(
                'YaY_icon.png',
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
                        'SGTSUPER100 applied',
                        maxLines: 3,
                        style: AppFontStyle.regularTextStyle(
                            AppColors.secondaryColor, 14.sp),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        '\$5 saving with this coupon',
                        style: AppFontStyle.semiboldTextStyle(
                            AppColors.black, 18.sp),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Use SGTSUPER100 and save every time your order',
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
                  Get.toNamed("/payment_details",
                    parameters: {"CouponStatus": "Successful"});
                },
              ),
            )
          ],
        ),
      ),
      actions: [
        Center(
          child: GestureDetector(
            onTap: () => {
              Get.toNamed("/payment_details",
                  parameters: {"CouponStatus": "Successful"})
            },
            child: Text(
              'YAY!',
              style:
                  AppFontStyle.semiboldTextStyle(AppColors.primaryColor, 16.sp),
            ),
          ),
        ),
      ],
    );
  }
}
