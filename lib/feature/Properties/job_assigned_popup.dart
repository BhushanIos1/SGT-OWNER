import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/shared/widgets/custom_buttons.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class JobAssignedPopup extends StatelessWidget {
  const JobAssignedPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.white,
      title: Container(
        width: Get.width-32.w,
        child: Column(children: [
          Image.asset(
            'assets/job_assigned.png',
            width: 146.w,
            height: 146.h,
            fit: BoxFit.contain,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    'Job Assigned',
                    style: AppFontStyle.semiboldTextStyle(
                        AppColors.primaryColor, 16.sp),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.backgroundColor,
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(5.r, 5.r))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.check,
                            color: AppColors.greenColor,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            '1 Shift Created',
                            style: AppFontStyle.regularTextStyle(
                                AppColors.black, 14.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.backgroundColor,
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(5.r, 5.r))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.check,
                            color: AppColors.greenColor,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            '5 Checkpoints Created',
                            style: AppFontStyle.regularTextStyle(
                                AppColors.black, 14.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.backgroundColor,
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(5.r, 5.r))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.check,
                            color: AppColors.greenColor,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            '1 Routes Created',
                            style: AppFontStyle.regularTextStyle(
                                AppColors.black, 14.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.backgroundColor,
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(5.r, 5.r))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.check,
                            color: AppColors.greenColor,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            '2 Guard Assigned',
                            style: AppFontStyle.regularTextStyle(
                                AppColors.black, 14.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
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
            Get.defaultDialog(
                middleText: "Properties Screen In Processing......");
            // Get.toNamed("/login");
          },
          backgoundColor: AppColors.primaryColor,
          textColor: AppColors.white,
          titleText: 'Back to Properties',
          isIcon: false,
        ),
      ],
    );
  }
}
