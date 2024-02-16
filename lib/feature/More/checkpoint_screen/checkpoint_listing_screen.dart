// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/feature/Properties/manage_property/views/subscreen/checkpoint/checkpoint_list.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class CheckpointListingScreen extends StatefulWidget {
  const CheckpointListingScreen({super.key});

  @override
  State<CheckpointListingScreen> createState() => _CheckpointListingScreenState();
}

class _CheckpointListingScreenState extends State<CheckpointListingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
      backgroundColor: Colors.white,
      elevation: 6,
      shadowColor: Color.fromARGB(255, 186, 185, 185),
      leading:Padding(
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
      title: Row(
        children: [
          Text(
            "Checkpoints",
            style: AppFontStyle.semiboldTextStyle(AppColors.textColor, 17.sp),
          ),
          SizedBox(width: 5.w,),
          Text(
            "(40)",
            style: AppFontStyle.semiboldTextStyle(AppColors.grayColor, 17.sp),
          ),
        ],
      ),
      centerTitle: false,
      actions: <Widget>[
        IconButton(
          onPressed: () {
            //screenNavigator(context, SettingsScreen());
          },
          icon: Icon(
            Icons.search_outlined,
            color: AppColors.primaryColor,
          ),
        ),
      ]
    ),
      body: const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: CheckpointList(),
      )
    );
  }
}