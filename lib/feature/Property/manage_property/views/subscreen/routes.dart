// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class Routes extends StatefulWidget {
  const Routes({super.key});

  @override
  State<Routes> createState() => _RoutesState();
}

class _RoutesState extends State<Routes> {
  final List<String> items = [
    'Radission Blu Hotel',
    'Radission Blu Hotel',
    'Radission Blu Hotel',
    'Radission Blu Hotel',
    'Radission Blu Hotel',
    'Radission Blu Hotel',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.backgroundColor,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Route',
                    style: AppFontStyle.semiboldTextStyle(
                        AppColors.textColor, 16.sp),
                  ),
                  Text(
                    '+ Add Route',
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
                          padding: EdgeInsets.all(8.w),
                          child: Card(
                            margin: EdgeInsets.all(2.w),
                            color: AppColors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        items[index].toString(),
                                        style: AppFontStyle.mediumTextStyle(
                                            AppColors.primaryColor, 14.sp),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Route Name:',
                                            style: AppFontStyle.regularTextStyle(
                                                AppColors.textColor, 12.sp),
                                          ),
                                          Text(
                                            ' Beverly ',
                                            style: AppFontStyle.mediumTextStyle(
                                                AppColors.primaryColor, 12.sp),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Assign Guards:',
                                            style: AppFontStyle.regularTextStyle(
                                                AppColors.textColor, 12.sp),
                                          ),
                                          Text(
                                            ' 07 ',
                                            style: AppFontStyle.mediumTextStyle(
                                                AppColors.primaryColor, 12.sp),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Shift Name:',
                                            style: AppFontStyle.regularTextStyle(
                                                AppColors.textColor, 12.sp),
                                          ),
                                          Text(
                                            ' Suhana shift',
                                            style: AppFontStyle.mediumTextStyle(
                                                AppColors.primaryColor, 12.sp),
                                          ),
                                          Text(
                                            ' | ',
                                            style: AppFontStyle.mediumTextStyle(
                                                AppColors.primaryBackColor, 12.sp),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'Total Checkpoint:',
                                                style:
                                                    AppFontStyle.regularTextStyle(
                                                        AppColors.textColor,
                                                        12.sp),
                                              ),
                                              Text(
                                                ' 07 ',
                                                style:
                                                    AppFontStyle.mediumTextStyle(
                                                        AppColors.primaryColor,
                                                        12.sp),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.more_vert,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ]),
    );
  }
}
