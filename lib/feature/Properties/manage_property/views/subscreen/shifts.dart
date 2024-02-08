// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sgt_owner/feature/Properties/manage_property/views/subscreen/shift_list.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class Shifts extends StatefulWidget {
  const Shifts({super.key});

  @override
  State<Shifts> createState() => _ShiftsState();
}

class _ShiftsState extends State<Shifts> {
  

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 16.h,
          ),
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
          ShiftList(),
        ]);
  }
}
