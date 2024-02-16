import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/style/colors.dart';

import '../../../style/font_style.dart';

class LeaveListingScreen extends StatefulWidget {
  const LeaveListingScreen({super.key});

  @override
  State<LeaveListingScreen> createState() => _LeaveListingScreenState();
}

class _LeaveListingScreenState extends State<LeaveListingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 6,
            shadowColor: Color.fromARGB(255, 186, 185, 185),
            leading: Padding(
              padding: EdgeInsets.only(
                left: 12.w,
              ),
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back_outlined,
                  color: AppColors.textColor,
                ),
              ),
            ),
            leadingWidth: 30.w,
            title: Text(
              "Manage Leaves",
              style: AppFontStyle.semiboldTextStyle(AppColors.textColor, 16.sp),
            ),
            centerTitle: false,
            actions: <Widget>[
              IconButton(
                onPressed: () {
                  //screenNavigator(context, SettingsScreen());
                },
                icon: const Icon(
                  Icons.search_outlined,
                  color: AppColors.primaryColor,
                ),
              ),
            ]),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "All Requests",
                    style: AppFontStyle.semiboldTextStyle(
                        AppColors.textColor, 16.sp),
                  ),
                  Row(
                    children: [
                      Text(
                        "Filter",
                        style: AppFontStyle.semiboldTextStyle(
                            AppColors.primaryColor, 16.sp),
                      ),
                      const Icon(
                        Icons.expand_more,
                      ),
                    ],
                  ),
                ],
              )
              
            ],
          ),
        ));
  }
}
