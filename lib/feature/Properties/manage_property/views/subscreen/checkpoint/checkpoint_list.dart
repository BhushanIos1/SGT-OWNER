import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class CheckpointList extends StatefulWidget {
  const CheckpointList({super.key});

  @override
  State<CheckpointList> createState() => _CheckpointListState();
}

class _CheckpointListState extends State<CheckpointList> {

  final List<String> items = [
    'Hallway Checkpoint',
    'Hyatt Checkpoint',
    'Ramada Checkpoint',
    'Marriot Checkpoint',
    'Novotel Checkpoint',
    'Clarks Checkpoint',
  ];
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/QR_Sample.png',
                                      width: 99.w,
                                      height: 72.h,
                                      fit: BoxFit.contain,
                                    ),
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
                                              'Property:',
                                              style:
                                                  AppFontStyle.regularTextStyle(
                                                      AppColors.textColor,
                                                      12.sp),
                                            ),
                                            Text(
                                              ' Radission Blu Hotel ',
                                              style:
                                                  AppFontStyle.mediumTextStyle(
                                                      AppColors.primaryColor,
                                                      12.sp),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Checkpoint Tasks:',
                                              style:
                                                  AppFontStyle.regularTextStyle(AppColors.textColor,12.sp),
                                            ),
                                            Text(
                                              ' 04 ',
                                              style:
                                                  AppFontStyle.mediumTextStyle(AppColors.primaryColor,12.sp),
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
                      );
                    });
  }
}