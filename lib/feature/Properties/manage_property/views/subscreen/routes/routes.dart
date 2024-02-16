// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sgt_owner/feature/Properties/manage_property/views/subscreen/routes/routes_list.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class Routes extends StatefulWidget {
  const Routes({super.key});

  @override
  State<Routes> createState() => _RoutesState();
}

class _RoutesState extends State<Routes> {
  

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
              RouteList()
              ],
            ),
          ]),
    );
  }
}
