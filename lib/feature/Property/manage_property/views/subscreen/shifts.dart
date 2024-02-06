// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class Shifts extends StatefulWidget {
  const Shifts({super.key});

  @override
  State<Shifts> createState() => _ShiftsState();
}

class _ShiftsState extends State<Shifts> {
  final List<String> items = [
    'Hallway shift',
    'Hallway shift',
    'Hallway shift',
    'Hallway shift',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Shifts',
                    style: AppFontStyle.semiboldTextStyle(
                        AppColors.textColor, 16.sp),
                  ),
                  Text(
                    '+ Add New Shifts',
                    style: AppFontStyle.semiboldTextStyle(
                        AppColors.primaryColor, 16.sp),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Container(
                        color: AppColors.white,
                        width: Get.width - 32.w,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            margin: EdgeInsets.all(2),
                            color: AppColors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Property Name",
                                            style:
                                                AppFontStyle.regularTextStyle(
                                                    AppColors.textColor, 12.sp),
                                          ),
                                          Text(
                                            "Radission Blu Hotel",
                                            style:
                                                AppFontStyle.semiboldTextStyle(
                                                    AppColors.primaryColor,
                                                    14.sp),
                                          ),
                                        ],
                                      ),
                                      Icon(
                                        Icons.more_vert,
                                        color: AppColors.secondaryColor,
                                      ),
                                    ],
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(8.w),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(5.r, 5.r)),
                                      color: AppColors.primaryBackColor,
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Shift Name",
                                                  style:
                                                      AppFontStyle.regularTextStyle(
                                                          AppColors.textColor,
                                                          12.sp),
                                                ),
                                                Text(
                                                  items[index].toString(),
                                                  style: AppFontStyle
                                                      .semiboldTextStyle(
                                                          AppColors.primaryColor,
                                                          14.sp),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "Clock In: ",
                                                  style: AppFontStyle
                                                      .mediumTextStyle(
                                                          AppColors.textColor,
                                                          14.sp),
                                                ),
                                                Text(
                                                  "08:00 AM",
                                                  style: AppFontStyle
                                                      .mediumTextStyle(
                                                          AppColors.secondaryColor,
                                                          14.sp),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "Clock Out: ",
                                                  style: AppFontStyle
                                                      .mediumTextStyle(
                                                          AppColors.textColor,
                                                          14.sp),
                                                ),
                                                Text(
                                                  "08:00 PM",
                                                  style: AppFontStyle
                                                      .mediumTextStyle(
                                                          AppColors.secondaryColor,
                                                          14.sp),
                                                ),
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ]
          );
  }
}
