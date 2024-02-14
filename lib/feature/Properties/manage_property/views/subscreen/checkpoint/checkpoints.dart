// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/feature/Properties/manage_property/views/subscreen/checkpoint/checkpoint_list.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class Checkpoints extends StatefulWidget {
  const Checkpoints({super.key});

  @override
  State<Checkpoints> createState() => _CheckpointsState();
}

class _CheckpointsState extends State<Checkpoints> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.backgroundColor,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal:16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Checkpoint',
                    style: AppFontStyle.semiboldTextStyle(
                        AppColors.textColor, 16.sp),
                  ),
                  Text(
                    '+ Add Checkpoint',
                    style: AppFontStyle.semiboldTextStyle(
                        AppColors.primaryColor, 16.sp),
                  ),
                ],
              ),
            ),
            CheckpointList(),
          ]),
    );
  }
}
