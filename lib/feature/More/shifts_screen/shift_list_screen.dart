import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/feature/Properties/manage_property/views/subscreen/shifts/shift_list.dart';
import 'package:sgt_owner/shared/widgets/custom_appbar.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class ShiftListingScreen extends StatefulWidget {
  const ShiftListingScreen({super.key});

  @override
  State<ShiftListingScreen> createState() => _ShiftListingScreenState();
}

class _ShiftListingScreenState extends State<ShiftListingScreen> {
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
      title: Text(
        "Total Shifts",
        style: AppFontStyle.semiboldTextStyle(AppColors.textColor, 17.sp),
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
        child: ShiftList(),
      )
    );
  }
}