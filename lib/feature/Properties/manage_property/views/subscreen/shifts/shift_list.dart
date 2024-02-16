import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class ShiftList extends StatefulWidget {
  const ShiftList({super.key});

  @override
  State<ShiftList> createState() => _ShiftListState();
}

class _ShiftListState extends State<ShiftList> {

  final List<String> items = [
    'Hallway shift',
    'Hallway shift',
    'Hallway shift',
    'Hallway shift',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(5.r, 5.r)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5.r,
                          blurRadius: 7.r,
                          offset:
                              Offset(0.w, 3.h), // changes position of shadow
                        ),
                      ],
                    ),
                    margin: EdgeInsets.all(2),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed("/shift_detail");
                        },
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Property Name",
                                      style: AppFontStyle.regularTextStyle(
                                          AppColors.textColor, 12.sp),
                                    ),
                                    Text(
                                      "Radission Blu Hotel",
                                      style: AppFontStyle.semiboldTextStyle(
                                          AppColors.primaryColor, 14.sp),
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
                                borderRadius:
                                    BorderRadius.all(Radius.elliptical(5.r, 5.r)),
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
                                            style: AppFontStyle.regularTextStyle(
                                                AppColors.textColor, 12.sp),
                                          ),
                                          Text(
                                            items[index].toString(),
                                            style: AppFontStyle.semiboldTextStyle(
                                                AppColors.primaryColor, 14.sp),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Clock In: ",
                                            style: AppFontStyle.mediumTextStyle(
                                                AppColors.textColor, 14.sp),
                                          ),
                                          Text(
                                            "08:00 AM",
                                            style: AppFontStyle.mediumTextStyle(
                                                AppColors.secondaryColor, 14.sp),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Clock Out: ",
                                            style: AppFontStyle.mediumTextStyle(
                                                AppColors.textColor, 14.sp),
                                          ),
                                          Text(
                                            "08:00 PM",
                                            style: AppFontStyle.mediumTextStyle(
                                                AppColors.secondaryColor, 14.sp),
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
              });
  }
}