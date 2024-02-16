import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/feature/Properties/property_view_carousal.dart';
import 'package:sgt_owner/shared/widgets/custom_appbar.dart';
import 'package:sgt_owner/shared/widgets/custom_buttons.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class CheckpointDetailScreen extends StatefulWidget {
  const CheckpointDetailScreen({super.key});

  @override
  State<CheckpointDetailScreen> createState() => _CheckpointDetailScreenState();
}

class _CheckpointDetailScreenState extends State<CheckpointDetailScreen> {
  bool hide = false;

  final List<String> items = [
    'Check all Security Camera’s',
    'Check all gates.',
    'Maintain timetable of visitors.',
    'Check all generators.',
  ];

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CustomAppBar(
        titleText: 'Hallway Checkpoint',
        isLeading: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(children: [
          SizedBox(
            height: 16.h,
          ),
          PropertyCarousal(),
          SizedBox(
            height: 16.h,
          ),
          Container(
            width: Get.width-32.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Checkpoint QR",
                  style: AppFontStyle.mediumTextStyle(AppColors.textColor, 16.sp),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.w),
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: AppColors.secondaryColor, width: 1.w),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(5.r, 5.r))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'assets/QR_Sample.png',
                        width:121.w,
                        fit: BoxFit.contain,
                      ),
                      Column(
                        children: [
                          Text(
                            "Checkpoint 1",
                            style: AppFontStyle.semiboldTextStyle(
                                AppColors.textColor, 18.sp),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            "08:00 AM",
                            style: AppFontStyle.semiboldTextStyle(
                                AppColors.primaryColor, 14.sp),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Container(
                              width: 133.w,
                              child: AppButton(
                                  onTaps: () {},
                                  backgoundColor: AppColors.primaryColor,
                                  textColor: AppColors.white,
                                  titleText: "Download QR")),
                          SizedBox(
                            height: 12.h,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12.h),
                  child: TextFormField(
                    style:
                        AppFontStyle.mediumTextStyle(AppColors.textColor, 14.sp),
                    autofocus: true,
                    readOnly: true,
                    decoration: InputDecoration(
                      hintText: 'Hallway Checkpoint',
                      hintStyle: AppFontStyle.regularTextStyle(
                          AppColors.textColor, 14.sp),
                      filled: true,
                      fillColor: Colors.white,
                      label: Text(
                        "Checkpoint Name",
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
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12.h),
                  child: TextFormField(
                    style:
                        AppFontStyle.mediumTextStyle(AppColors.textColor, 14.sp),
                    autofocus: true,
                    readOnly: true,
                    maxLines: 5,
                    decoration: InputDecoration(
                      hintText: 'Checkpoint Description lorem ipsum lorem ipsum',
                      hintStyle: AppFontStyle.regularTextStyle(
                          AppColors.textColor, 14.sp),
                      filled: true,
                      fillColor: Colors.white,
                      label: Text(
                        "Checkpoint Description",
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
                Text(
                  "Checkpoint Location",
                  style:
                      AppFontStyle.semiboldTextStyle(AppColors.textColor, 16.sp),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: AppColors.primaryColor, width: 1.w),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(5.r, 5.r))),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  "Tasks for this checkpoint",
                  style:
                      AppFontStyle.semiboldTextStyle(AppColors.textColor, 16.sp),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  "Minimum 1 and Maximum 15 Task can be added in a single checkpoint.",
                  style: AppFontStyle.lightTextStyle(
                      AppColors.secondaryColor, 12.sp),
                ),
                SizedBox(
                  height: 12.h,
                ),
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 12.h),
                      child: TextFormField(
                        style: AppFontStyle.mediumTextStyle(
                            AppColors.textColor, 14.sp),
                        autofocus: true,
                        readOnly: true,
                        decoration: InputDecoration(
                          hintText: items[index].toString(),
                          hintStyle: AppFontStyle.regularTextStyle(
                              AppColors.textColor, 14.sp),
                          filled: true,
                          fillColor: Colors.white,
                          label: Text(
                            'Task',
                            style: AppFontStyle.lightTextStyle(
                                AppColors.textColor, 12.sp),
                          ),
                          labelStyle: AppFontStyle.regularTextStyle(
                              AppColors.textColor, 12.sp),
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 19.w),
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
                    );
                  }),
                ),
              ],
            ),
          ),
          Container(
            width: Get.width-32.w,
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: AppButton(
                        onTaps: () {
                          Get.toNamed('/edit_checkpoint_and_task');
                        },
                        backgoundColor: AppColors.primaryColor,
                        textColor: AppColors.white,
                        titleText: "Edit Checkpoint & Task"),
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
                      titleText: 'Download Report',
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
