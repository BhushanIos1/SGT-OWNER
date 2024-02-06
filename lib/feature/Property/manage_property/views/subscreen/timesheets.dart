// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class Timesheets extends StatefulWidget {
  const Timesheets({super.key});

  @override
  State<Timesheets> createState() => _TimesheetsState();
}

class _TimesheetsState extends State<Timesheets> {
  // final List<String> items = [
  //   'Guard Name'
  // ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // child: Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     ListView.builder(
      //         scrollDirection: Axis.vertical,
      //         shrinkWrap: true,
      //         itemCount: 4,
      //         itemBuilder: (context, index) {
      //           return Container(
      //             color: AppColors.white,
      //             // width: Get.width - 32.w,
      //             child: Padding(
      //               padding: const EdgeInsets.all(8.0),
      //               child: Card(
      //                 margin: EdgeInsets.all(2),
      //                 color: AppColors.white,
      //                 child: Padding(
      //                   padding: EdgeInsets.all(8.w),
      //                   child: Column(
      //                     children: [
      //                       Row(
      //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                         children: [
      //                           Column(
      //                             mainAxisAlignment: MainAxisAlignment.start,
      //                             crossAxisAlignment: CrossAxisAlignment.start,
      //                             children: [
      //                               Row(
      //                                 children: [
      //                                   Icon(
      //                                     Icons.badge,
      //                                     color: AppColors.primaryColor,
      //                                   ),
      //                                   SizedBox(
      //                                     width: 8.w,
      //                                   ),
      //                                   Text(
      //                                     "Guard Name",
      //                                     style: AppFontStyle.semiboldTextStyle(
      //                                         AppColors.secondaryColor, 14.sp),
      //                                   ),
      //                                 ],
      //                               ),
      //                               Row(
      //                                 children: [
      //                                   Icon(
      //                                     Icons.cable,
      //                                     color: AppColors.primaryColor,
      //                                   ),
      //                                   SizedBox(
      //                                     width: 8.w,
      //                                   ),
      //                                   Text(
      //                                     "Route 1",
      //                                     style: AppFontStyle.semiboldTextStyle(
      //                                         AppColors.secondaryColor, 14.sp),
      //                                   ),
      //                                 ],
      //                               ),
      //                               Row(
      //                                 children: [
      //                                   Icon(
      //                                     Icons.mode_of_travel,
      //                                     color: AppColors.primaryColor,
      //                                   ),
      //                                   SizedBox(
      //                                     width: 8.w,
      //                                   ),
      //                                   Text(
      //                                     "9 Checkpoints",
      //                                     style: AppFontStyle.semiboldTextStyle(
      //                                         AppColors.secondaryColor, 14.sp),
      //                                   ),
      //                                 ],
      //                               ),
      //                               Row(
      //                                 children: [
      //                                   Icon(
      //                                     Icons.badge,
      //                                     color: AppColors.primaryColor,
      //                                   ),
      //                                   SizedBox(
      //                                     width: 8.w,
      //                                   ),
      //                                   Text(
      //                                     "Shift Name",
      //                                     style: AppFontStyle.semiboldTextStyle(
      //                                         AppColors.secondaryColor, 14.sp),
      //                                   ),
      //                                 ],
      //                               ),
      //                             ],
      //                           ),
      //                           Row(
      //                             children: [
      //                               Text(
      //                                 'Tasks: ',
      //                                 style: AppFontStyle.semiboldTextStyle(
      //                                     AppColors.secondaryColor, 14.sp),
      //                               ),
      //                               Text(
      //                                 '09',
      //                                 style: AppFontStyle.semiboldTextStyle(
      //                                     AppColors.primaryColor, 14.sp),
      //                               ),
      //                             ],
      //                           ),
      //                         ],
      //                       ),
      //                       Container(
      //                         color: AppColors.primaryBackColor,
      //                         padding: EdgeInsets.all(8.w),
      //                         child: Row(
      //                           mainAxisAlignment:
      //                               MainAxisAlignment.spaceBetween,
      //                           children: [
      //                             Row(
      //                               children: [
      //                                 Icon(
      //                                   Icons.work_history,
      //                                   size: 18.sp,
      //                                   color: AppColors.primaryColor,
      //                                 ),
      //                                 SizedBox(
      //                                   width: 8.w,
      //                                 ),
      //                                 Column(
      //                                   mainAxisAlignment:
      //                                       MainAxisAlignment.start,
      //                                   crossAxisAlignment:
      //                                       CrossAxisAlignment.start,
      //                                   children: [
      //                                     Text(
      //                                       '10:20 PM',
      //                                       style: AppFontStyle.mediumTextStyle(
      //                                           AppColors.secondaryColor,
      //                                           14.sp),
      //                                     ),
      //                                     Text(
      //                                       'Clock-In',
      //                                       style: AppFontStyle.mediumTextStyle(
      //                                           AppColors.primaryColor, 10.sp),
      //                                     ),
      //                                   ],
      //                                 )
      //                               ],
      //                             ),
      //                             Row(
      //                               children: [
      //                                 Icon(
      //                                   Icons.work_history,
      //                                   size: 18.sp,
      //                                   color: AppColors.primaryColor,
      //                                 ),
      //                                 SizedBox(
      //                                   width: 8.w,
      //                                 ),
      //                                 Column(
      //                                   mainAxisAlignment:
      //                                       MainAxisAlignment.start,
      //                                   crossAxisAlignment:
      //                                       CrossAxisAlignment.start,
      //                                   children: [
      //                                     Text(
      //                                       '10:20 PM',
      //                                       style: AppFontStyle.mediumTextStyle(
      //                                           AppColors.secondaryColor,
      //                                           14.sp),
      //                                     ),
      //                                     Text(
      //                                       'Clock-Out',
      //                                       style: AppFontStyle.mediumTextStyle(
      //                                           AppColors.primaryColor, 10.sp),
      //                                     ),
      //                                   ],
      //                                 )
      //                               ],
      //                             )
      //                           ],
      //                         ),
      //                       )
      //                     ],
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           );
      //         }),
      //   ],
      // ),
    
    );
  }
}
