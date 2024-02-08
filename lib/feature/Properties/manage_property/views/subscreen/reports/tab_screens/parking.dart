import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/shared/widgets/custom_buttons.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class ParkingReport extends StatefulWidget {
  const ParkingReport({super.key});

  @override
  State<ParkingReport> createState() => _ParkingReportState();
}

class _ParkingReportState extends State<ParkingReport> {
  final List<String> items = [
    'Radission Blu Hotel',
    'Ramada Plaza Resort',
  ];
  final List<String> nameList = [
    'John D',
    'Jackson',
  ]; 

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 2,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width: Get.width - 32.w,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    border:
                        Border.all(width: 1.w, color: AppColors.disableColor),
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(5.r, 5.r))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.elliptical(5.r, 5.r),
                            topRight: Radius.elliptical(5.r, 5.r)),
                        color: AppColors.primaryColor,
                      ),
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.r),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Guard by:',
                              style: AppFontStyle.semiboldTextStyle(
                                  AppColors.white, 14.sp),
                            ),
                            Text(
                              nameList[index].toString(),
                              style: AppFontStyle.semiboldTextStyle(
                                  AppColors.white, 14.sp),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(8.w),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                items[index].toString(),
                                style: AppFontStyle.semiboldTextStyle(
                                    AppColors.primaryColor, 18.sp),
                              ),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Divider(
                              color: AppColors.disableColor,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Checkpoint:',
                                  style: AppFontStyle.semiboldTextStyle(
                                      AppColors.black, 14.sp),
                                ),
                                Text(
                                  'Checkpoint 1',
                                  style: AppFontStyle.semiboldTextStyle(
                                      AppColors.primaryColor, 14.sp),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Route Number:',
                                  style: AppFontStyle.semiboldTextStyle(
                                      AppColors.black, 14.sp),
                                ),
                                Text(
                                  'Route 1',
                                  style: AppFontStyle.semiboldTextStyle(
                                      AppColors.primaryColor, 14.sp),
                                ),
                                Text(
                                  '(Shift Name)',
                                  style: AppFontStyle.semiboldTextStyle(
                                      AppColors.secondaryColor, 14.sp),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1.w,
                                      color: AppColors.disableColor),
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(5.r, 5.r))),
                              child: Padding(
                                padding: EdgeInsets.all(8.w),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Parking Reports',
                                          style: AppFontStyle.semiboldTextStyle(
                                              AppColors.black, 16.sp),
                                        ),
                                        const Icon(
                                          Icons.expand_less,
                                          color: AppColors.secondaryColor,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                    Text(
                                      'Subject',
                                      style: AppFontStyle.mediumTextStyle(
                                          AppColors.secondaryColor, 14.sp),
                                    ),
                                    Text(
                                      'Porem ipsum dolor sit amet, consectetur ',
                                      style: AppFontStyle.mediumTextStyle(
                                          AppColors.textColor, 13.sp),
                                    ),
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                    Text(
                                      'Note',
                                      style: AppFontStyle.mediumTextStyle(
                                          AppColors.secondaryColor, 14.sp),
                                    ),
                                    Text(
                                      'Porem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, ',
                                      style: AppFontStyle.mediumTextStyle(
                                          AppColors.textColor, 13.sp),
                                    ),
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                    Text(
                                      'Images',
                                      style: AppFontStyle.mediumTextStyle(
                                          AppColors.secondaryColor, 14.sp),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.network(
                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7FitFWf9L0G4hNLWYpSgMQb26Fq9KhLolNw&usqp=CAU',
                                          width: 54.w,
                                          fit: BoxFit.contain,
                                        ),
                                        Image.network(
                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx25mlnSrDu2TI4DnZ7zl6FpxwVaTYoSGHZg&usqp=CAU',
                                          width: 54.w,
                                          fit: BoxFit.contain,
                                        ),
                                        Image.network(
                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEXGw6TIMBUlW4dEvanvpiw03ui3QeCxlX7A&usqp=CAU',
                                          width: 54.w,
                                          fit: BoxFit.contain,
                                        ),
                                        Image.network(
                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgnCphamOVDAKtLu7JwqCAYwdFSlCakXYISw&usqp=CAU',
                                          width: 54.w,
                                          fit: BoxFit.contain,
                                        ),
                                        Image.network(
                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQshullUVdL_sWboY51fO6OJwPxdsGXbQ4udQ&usqp=CAU',
                                          width: 54.w,
                                          fit: BoxFit.contain,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            Container(
                              width: 200.w,
                              child: AppButton(
                                  onTaps: () {},
                                  backgoundColor: AppColors.primaryColor,
                                  textColor: AppColors.white,
                                  titleText: "Download"),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
            ],
          );
        });
  }
}
