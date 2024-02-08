// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({super.key, required this.titleText, this.isLeading});

  String titleText;
  bool? isLeading = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 6,
      shadowColor: Color.fromARGB(255, 186, 185, 185),
      leading: isLeading ?? false
          ? Padding(
              padding: EdgeInsets.only(
                left: 12.0,
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
            )
          : Icon(
              Icons.arrow_back_outlined,
              color: Colors.transparent,
            ),
      leadingWidth: isLeading ?? false ? 30.w : 0,
      title: Text(
        titleText,
        style: AppFontStyle.semiboldTextStyle(AppColors.textColor, 17.sp),
      ),
      centerTitle: false,
      actions: titleText == "Dashboard" || titleText =="Properties" || titleText =="Total Shifts" ? [
        IconButton(
          onPressed: () {
            //screenNavigator(context, SettingsScreen());
          },
          icon: Icon(
            Icons.search_outlined,
            color: AppColors.primaryColor,
          ),
        ),
        IconButton(
          onPressed: () {
            //screenNavigator(context, SettingsScreen());
          },
          icon: Icon(
            Icons.notifications_active,
            color: AppColors.primaryColor,
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        CircleAvatar(
          radius: 15.r,
          backgroundColor: Colors.transparent,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network('https://via.placeholder.com/150'),
          ),
        ),
        SizedBox(
          width: 10,
        )
      ] : [] ,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(63.0);
}
