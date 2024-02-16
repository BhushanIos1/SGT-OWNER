// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/shared/widgets/custom_appbar.dart';
import 'package:sgt_owner/shared/widgets/custom_bottomsheet.dart';
import 'package:sgt_owner/shared/widgets/custom_buttons.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class AddNewPropertyScreen extends StatefulWidget {
  const AddNewPropertyScreen({super.key});

  @override
  State<AddNewPropertyScreen> createState() => _AddNewPropertyScreenState();
}

class _AddNewPropertyScreenState extends State<AddNewPropertyScreen> {
  bool expand = true;
  bool expanded = true;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return 
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     SizedBox(
          //       height: 16.h,
          //     ),
          //     Center(
          //       child: Image.asset(
          //         'assets/no_property_added.png',
          //         width: 236.w,
          //         height: 186.h,
          //         fit: BoxFit.contain,
          //       ),
          //     ),
          //     Text(
          //       "No Property Added",
          //       style: AppFontStyle.boldTextStyle(AppColors.black, 16.sp),
          //     ),
          //     SizedBox(
          //       height: 8.h,
          //     ),
          //     Column(
          //       children: [
          //         AppButton(
          //             onTaps: () {
          //               Get.toNamed("/property_creation");
          //             },
          //             backgoundColor: AppColors.primaryColor,
          //             textColor: AppColors.white,
          //             titleText: "+ Add New Property"),
          //         SizedBox(
          //           height: 32.h,
          //         ),
          //       ],
          //     )
          //   ],
          // ),

          Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 16.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(10.r, 10.r))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/property.png',
                    width: 99.w,
                    height: 72.h,
                    fit: BoxFit.contain,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed("/property_creation");
                    },
                    child: Container(
                      padding: EdgeInsets.all(8.w),
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: AppColors.primaryColor)),
                      child: Text(
                        '+ Add New Property',
                        style: AppFontStyle.semiboldTextStyle(
                            AppColors.primaryColor, 16.sp),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              'Recently Added',
              style: AppFontStyle.semiboldTextStyle(AppColors.textColor, 16.sp),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Container(
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(10.r, 10.r))),
              child: CarouselSlider(
                options: CarouselOptions(
                    // height: 250.h,
                    ),
                items: [1, 2, 3, 4].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 12.w),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.center,
                                      child: Image.network(
                                        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
                                        width: 120.w,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      width: 95.w,
                                      height: 48.h,
                                      color: Colors.black.withOpacity(0.3),
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Create Shift',
                                        style: AppFontStyle.mediumTextStyle(
                                            AppColors.white, 14.sp),
                                      ),
                                    ),
                                  ],
                                ),
                                Expanded(
                                    child: Padding(
                                  padding: EdgeInsets.only(left: 8.w),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Radission Blu Hotel',
                                        style: AppFontStyle.semiboldTextStyle(
                                            AppColors.primaryColor, 16.sp),
                                      ),
                                      Text(
                                        'Residential Property',
                                        style: AppFontStyle.mediumTextStyle(
                                            AppColors.textColor, 12.sp),
                                      ),
                                      Text(
                                        'This is a Property description: area where in person can write basic...',
                                        style: AppFontStyle.regularTextStyle(
                                            AppColors.disableColor, 12.sp),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.location_on,
                                                color: AppColors.primaryColor,
                                              ),
                                              Text(
                                                'Lucknow...',
                                                style: AppFontStyle
                                                    .regularTextStyle(
                                                        AppColors.primaryColor,
                                                        12.sp),
                                              ),
                                            ],
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                expand = !expand;
                                              });
                                            },
                                            child: Icon(
                                              expand
                                                  ? Icons.expand_less
                                                  : Icons.expand_more,
                                              color: AppColors.primaryColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ))
                              ],
                            ),
                            expand
                                ? Column(
                                    children: [
                                      SizedBox(
                                        height: 16.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Shift',
                                                style: AppFontStyle
                                                    .mediumTextStyle(
                                                        AppColors
                                                            .secondaryColor,
                                                        14.sp),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.elliptical(5.r, 5.r),
                                                  ),
                                                  color:
                                                      AppColors.secondaryColor,
                                                ),
                                                width: 58.w,
                                                height: 5.h,
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Checkpoint',
                                                style: AppFontStyle
                                                    .mediumTextStyle(
                                                        AppColors
                                                            .secondaryColor,
                                                        14.sp),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.elliptical(5.r, 5.r),
                                                  ),
                                                  color:
                                                      AppColors.secondaryColor,
                                                ),
                                                width: 78.w,
                                                height: 5.h,
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Route',
                                                style: AppFontStyle
                                                    .mediumTextStyle(
                                                        AppColors
                                                            .secondaryColor,
                                                        14.sp),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.elliptical(5.r, 5.r),
                                                  ),
                                                  color:
                                                      AppColors.secondaryColor,
                                                ),
                                                width: 58.w,
                                                height: 5.h,
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Assign guard',
                                                style: AppFontStyle
                                                    .mediumTextStyle(
                                                        AppColors
                                                            .secondaryColor,
                                                        14.sp),
                                                overflow: TextOverflow.fade,
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.elliptical(5.r, 5.r),
                                                  ),
                                                  color:
                                                      AppColors.secondaryColor,
                                                ),
                                                width: 82.w,
                                                height: 5.h,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 12.h,
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          print('Clicked');
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15.w, vertical: 8.h),
                                          decoration: BoxDecoration(
                                              color: AppColors.primaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              border: Border.all(
                                                  color:
                                                      AppColors.primaryColor)),
                                          child: Text(
                                            'Create Shift & Assign Guard',
                                            style:
                                                AppFontStyle.semiboldTextStyle(
                                                    AppColors.white, 16.sp),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                : Container()
                          ],
                        ),
                      );
                    },
                  );
                }).toList(),
              )),
          SizedBox(
            height: 16.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'All Properties',
                  style:
                      AppFontStyle.mediumTextStyle(AppColors.textColor, 16.sp),
                ),
                Row(
                  children: [
                    Text(
                      'Filter',
                      style: AppFontStyle.mediumTextStyle(
                          AppColors.primaryColor, 16.sp),
                    ),
                    Stack(
                      children: [
                        Icon(
                          Icons.expand_more,
                          color: AppColors.primaryColor,
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: InkWell(
                              onTap: () {
                                showModalBottomSheet<int>(
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (context) {
                                    return AppBottomSheet(
                                      child: Container(
                                        color: AppColors.white,
                                        child: Column(children: [
                                          SizedBox(
                                            height: 12.h,
                                          ),
                                          Center(
                                            child: Container(
                                              child: Row(
                                                mainAxisAlignment:MainAxisAlignment.center,
                                                crossAxisAlignment:CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Filters',
                                                    style: AppFontStyle
                                                        .semiboldTextStyle(
                                                            AppColors.primaryColor,
                                                            16.sp),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Container(
                                              padding: EdgeInsets.only(
                                                  top: 15.h, bottom: 16.h),
                                              height: 48.h,
                                              width: Get.width - 80.w,
                                              decoration: BoxDecoration(
                                                border: Border(
                                                  bottom: BorderSide(
                                                    color: AppColors.grayColor,
                                                    width: 1.w,
                                                  ),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Assign Properties',
                                                    style: AppFontStyle
                                                        .regularTextStyle(
                                                            AppColors.textColor,
                                                            14.sp),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Container(
                                              padding: EdgeInsets.only(
                                                  top: 15.h, bottom: 16.h),
                                              height: 48.h,
                                              width: Get.width - 80.w,
                                              decoration: BoxDecoration(
                                                border: Border(
                                                  bottom: BorderSide(
                                                    color: AppColors.grayColor,
                                                    width: 1.w,
                                                  ),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Unassign Properties',
                                                    style: AppFontStyle
                                                        .regularTextStyle(
                                                            AppColors.textColor,
                                                            14.sp),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Container(
                                              padding: EdgeInsets.only(
                                                  top: 15.h, bottom: 16.h),
                                              height: 48.h,
                                              width: Get.width - 80.w,
                                              decoration: BoxDecoration(
                                                border: Border(
                                                  bottom: BorderSide(
                                                    color: AppColors.grayColor,
                                                    width: 1.w,
                                                  ),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Recently Created',
                                                    style: AppFontStyle
                                                        .regularTextStyle(
                                                            AppColors.textColor,
                                                            14.sp),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Container(
                                              padding: EdgeInsets.only(
                                                  top: 15.h, bottom: 16.h),
                                              height: 20.h,
                                              width: Get.width - 80.w,
                                              decoration: BoxDecoration(
                                                border: Border(
                                                  bottom: BorderSide(
                                                    color: AppColors.grayColor,
                                                    width: 1.w,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ]),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Container(
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.expand_more,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Container(
            width: Get.width - 32.w,
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.all(Radius.elliptical(10.r, 10.r))),
            margin: EdgeInsets.symmetric(horizontal: 12.w),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                              'assets/property_image.jpeg',
                              width: 120.w,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            width: 95.w,
                            height: 48.h,
                            color: Colors.black.withOpacity(0.3),
                            alignment: Alignment.center,
                            child: Text(
                              'Assigned',
                              style: AppFontStyle.mediumTextStyle(
                                  AppColors.white, 14.sp),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.only(left: 8.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Radission Blu Hotel',
                              style: AppFontStyle.semiboldTextStyle(
                                  AppColors.primaryColor, 16.sp),
                            ),
                            Text(
                              'Residential Property',
                              style: AppFontStyle.mediumTextStyle(
                                  AppColors.textColor, 12.sp),
                            ),
                            Text(
                              'This is a Property description: area where in person can write basic...',
                              style: AppFontStyle.regularTextStyle(
                                  AppColors.disableColor, 12.sp),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: AppColors.primaryColor,
                                    ),
                                    Text(
                                      'Lucknow...',
                                      style: AppFontStyle.regularTextStyle(
                                          AppColors.primaryColor, 12.sp),
                                    ),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      expanded = !expanded;
                                    });
                                  },
                                  child: Icon(
                                    expanded
                                        ? Icons.expand_less
                                        : Icons.expand_more,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ))
                    ],
                  ),
                  expanded
                      ? Column(
                          children: [
                            SizedBox(
                              height: 16.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Shift',
                                      style: AppFontStyle.mediumTextStyle(
                                          AppColors.secondaryColor, 14.sp),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.elliptical(5.r, 5.r),
                                        ),
                                        color: AppColors.primaryColor,
                                      ),
                                      width: 65.w,
                                      height: 5.h,
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Checkpoint',
                                      style: AppFontStyle.mediumTextStyle(
                                          AppColors.secondaryColor, 14.sp),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.elliptical(5.r, 5.r),
                                        ),
                                        color: AppColors.primaryColor,
                                      ),
                                      width: 85.w,
                                      height: 5.h,
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Route',
                                      style: AppFontStyle.mediumTextStyle(
                                          AppColors.secondaryColor, 14.sp),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.elliptical(5.r, 5.r),
                                        ),
                                        color: AppColors.primaryColor,
                                      ),
                                      width: 73.w,
                                      height: 5.h,
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Assign guard',
                                      style: AppFontStyle.mediumTextStyle(
                                          AppColors.secondaryColor, 14.sp),
                                      overflow: TextOverflow.fade,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.elliptical(5.r, 5.r),
                                        ),
                                        color: AppColors.primaryColor,
                                      ),
                                      width: 100.w,
                                      height: 5.h,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            TextButton(
                              onPressed: () {
                                Get.toNamed("/manage_property_screen");
                                // print('Clicked');
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 90.w, vertical: 8.h),
                                decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(
                                        color: AppColors.primaryColor)),
                                child: Text(
                                  'Manage Property',
                                  style: AppFontStyle.semiboldTextStyle(
                                      AppColors.white, 16.sp),
                                ),
                              ),
                            )
                          ],
                        )
                      : Container()
                ],
              ),
            ),
          ),
        ],
      );
  }
}
