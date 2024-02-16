import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/feature/Properties/property_view_carousal.dart';
import 'package:sgt_owner/shared/widgets/custom_appbar.dart';
import 'package:sgt_owner/shared/widgets/custom_buttons.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class ShiftDetailScreen extends StatefulWidget {
  const ShiftDetailScreen({super.key});

  @override
  State<ShiftDetailScreen> createState() => _ShiftDetailScreenState();
}

class _ShiftDetailScreenState extends State<ShiftDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CustomAppBar(
        titleText: 'Shift Name',
        isLeading: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(children: [
          SizedBox(
            height: 16.h,
          ),
          const PropertyCarousal(),
          SizedBox(
            height: 16.h,
          ),
          Container(
            width: Get.width - 32.w,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Divider(
                          color: AppColors.disableColor,
                        ),
                        Text(
                          "Shifts Details",
                          style: AppFontStyle.semiboldTextStyle(
                              AppColors.primaryColor, 16.sp),
                        ),
                        const Divider(
                          color: AppColors.disableColor,
                        ),
                      ]),
                  Text(
                    "Shift for radission blu hotel",
                    style: AppFontStyle.semiboldTextStyle(
                        AppColors.primaryColor, 16.sp),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8, vertical: 12.h),
                    child: TextFormField(
                      style: AppFontStyle.mediumTextStyle(
                          AppColors.textColor, 14.sp),
                      autofocus: true,
                      readOnly: true,
                      decoration: InputDecoration(
                        hintText: 'Hallway Checkpoint',
                        hintStyle: AppFontStyle.regularTextStyle(
                            AppColors.secondaryColor, 14.sp),
                        filled: true,
                        fillColor: Colors.white,
                        label: Text(
                          "Shift Name",
                          style: AppFontStyle.lightTextStyle(
                              AppColors.textColor, 12.sp),
                        ),
                        labelStyle: AppFontStyle.regularTextStyle(
                            AppColors.textColor, 12.sp),
                        contentPadding: EdgeInsets.symmetric(horizontal: 19.w),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                              width: 1, color: AppColors.disableColor),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                              width: 1, color: AppColors.disableColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                            color: AppColors.disableColor,
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8, vertical: 12.h),
                    child: TextFormField(
                      style: AppFontStyle.mediumTextStyle(
                          AppColors.textColor, 14.sp),
                      autofocus: true,
                      readOnly: true,
                      decoration: InputDecoration(
                        hintText: '12:00 AM',
                        hintStyle: AppFontStyle.regularTextStyle(
                            AppColors.secondaryColor, 14.sp),
                        filled: true,
                        fillColor: Colors.white,
                        label: Text(
                          "Clock-In Time",
                          style: AppFontStyle.lightTextStyle(
                              AppColors.textColor, 12.sp),
                        ),
                        labelStyle: AppFontStyle.regularTextStyle(
                            AppColors.textColor, 12.sp),
                        contentPadding: EdgeInsets.symmetric(horizontal: 19.w),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                              width: 1, color: AppColors.disableColor),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                              width: 1, color: AppColors.disableColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                            color: AppColors.disableColor,
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8, vertical: 12.h),
                    child: TextFormField(
                      style: AppFontStyle.mediumTextStyle(
                          AppColors.textColor, 14.sp),
                      autofocus: true,
                      readOnly: true,
                      maxLines: 5,
                      decoration: InputDecoration(
                        hintText: 'Lorem ipsum lorem ipsum lorem ipsum',
                        hintStyle: AppFontStyle.regularTextStyle(
                            AppColors.secondaryColor, 14.sp),
                        filled: true,
                        fillColor: Colors.white,
                        label: Text(
                          "Clock-In Description",
                          style: AppFontStyle.lightTextStyle(
                              AppColors.textColor, 12.sp),
                        ),
                        labelStyle: AppFontStyle.regularTextStyle(
                            AppColors.textColor, 12.sp),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 19.w, vertical: 8.h),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                              width: 1, color: AppColors.disableColor),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                              width: 1, color: AppColors.disableColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                            color: AppColors.disableColor,
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/QR_Sample.png',
                          width: 174.w,
                          fit: BoxFit.contain,
                        ),
                        Text(
                          'Generated QR code',
                          style: AppFontStyle.mediumTextStyle(
                              AppColors.textColor, 18.sp),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  const Divider(
                    color: AppColors.disableColor,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8, vertical: 12.h),
                    child: TextFormField(
                      style: AppFontStyle.mediumTextStyle(
                          AppColors.textColor, 14.sp),
                      autofocus: true,
                      readOnly: true,
                      decoration: InputDecoration(
                        hintText: '12:00 PM',
                        hintStyle: AppFontStyle.regularTextStyle(
                            AppColors.secondaryColor, 14.sp),
                        filled: true,
                        fillColor: Colors.white,
                        label: Text(
                          "Clock-Out Time",
                          style: AppFontStyle.lightTextStyle(
                              AppColors.textColor, 12.sp),
                        ),
                        labelStyle: AppFontStyle.regularTextStyle(
                            AppColors.textColor, 12.sp),
                        contentPadding: EdgeInsets.symmetric(horizontal: 19.w),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                              width: 1, color: AppColors.disableColor),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                              width: 1, color: AppColors.disableColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                            color: AppColors.disableColor,
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8, vertical: 12.h),
                    child: TextFormField(
                      style: AppFontStyle.mediumTextStyle(
                          AppColors.textColor, 14.sp),
                      autofocus: true,
                      readOnly: true,
                      maxLines: 5,
                      decoration: InputDecoration(
                        hintText: 'Lorem ipsum lorem ipsum lorem ipsum',
                        hintStyle: AppFontStyle.regularTextStyle(
                            AppColors.secondaryColor, 14.sp),
                        filled: true,
                        fillColor: Colors.white,
                        label: Text(
                          "Clock-Out Description",
                          style: AppFontStyle.lightTextStyle(
                              AppColors.textColor, 12.sp),
                        ),
                        labelStyle: AppFontStyle.regularTextStyle(
                            AppColors.textColor, 12.sp),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 19.w, vertical: 8.h),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                              width: 1, color: AppColors.disableColor),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                              width: 1, color: AppColors.disableColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                            color: AppColors.disableColor,
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/QR_Sample.png',
                          width: 174.w,
                          fit: BoxFit.contain,
                        ),
                        Text(
                          'Generated QR code',
                          style: AppFontStyle.mediumTextStyle(
                              AppColors.textColor, 18.sp),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  )
                ]),
          ),
          Container(
            width: Get.width - 32.w,
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: AppButton(
                        onTaps: () {
                          Get.toNamed('/edit_shift');
                        },
                        backgoundColor: AppColors.primaryColor,
                        textColor: AppColors.white,
                        titleText: "Edit Shift"),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: AppButton(
                      onTaps: () {},
                      backgoundColor: AppColors.white,
                      textColor: AppColors.primaryColor,
                      titleText: 'Delete shift',
                      borderColor: AppColors.primaryColor,
                      isIcon: false,
                    ),
                  ),
                ),
                SizedBox(
                  height: 38.h,
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
