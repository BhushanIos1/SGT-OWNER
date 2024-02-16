import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/feature/Properties/property_view_carousal.dart';
import 'package:sgt_owner/shared/widgets/custom_appbar.dart';
import 'package:sgt_owner/shared/widgets/custom_buttons.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class CheckpointHistoryScreen extends StatefulWidget {
  const CheckpointHistoryScreen({super.key});

  @override
  State<CheckpointHistoryScreen> createState() =>
      _CheckpointHistoryScreenState();
}

class _CheckpointHistoryScreenState extends State<CheckpointHistoryScreen> {
  bool hide = false;
  bool _value = false;

  final List<String> items = [
    '26/09/2023',
    '10/05/2023',
    '11/05/2023',
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
        titleText: 'Checkpoint History',
        isLeading: true,
      ),
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(children: [
            SizedBox(
              height: 8.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "History",
                    style: AppFontStyle.semiboldTextStyle(
                        AppColors.textColor, 16.sp),
                  ),
                  const Icon(
                    Icons.calendar_today,
                    color: AppColors.grayColor,
                    size: 24,
                  ),
                ],
              ),
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: ((context, index) {
                return Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(horizontal:16.w,vertical: 8.h),
                      child: Text(
                        items[index].toString(),
                        style: AppFontStyle.mediumTextStyle(
                            AppColors.grayColor, 14.sp),
                      ),
                    ),
                    Container(
                      width: Get.width - 32.w,
                      padding: EdgeInsets.all(8.w),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(5.r, 5.r)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Shift Name: ",
                                style: AppFontStyle.mediumTextStyle(
                                    AppColors.textColor, 14.sp),
                              ),
                              Text(
                                "Radission Blu Hotel",
                                style: AppFontStyle.mediumTextStyle(
                                    AppColors.primaryColor, 14.sp),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Check-In: ",
                                    style: AppFontStyle.mediumTextStyle(
                                        AppColors.textColor, 12.sp),
                                  ),
                                  Text(
                                    "10:00 AM",
                                    style: AppFontStyle.mediumTextStyle(
                                        AppColors.primaryColor, 12.sp),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Check-Out: ",
                                    style: AppFontStyle.mediumTextStyle(
                                        AppColors.textColor, 12.sp),
                                  ),
                                  Text(
                                    "10:00 AM",
                                    style: AppFontStyle.mediumTextStyle(
                                        AppColors.primaryColor, 12.sp),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Divider(
                            color: AppColors.disableColor,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Route: ",
                                    style: AppFontStyle.mediumTextStyle(
                                        AppColors.textColor, 14.sp),
                                  ),
                                  Text(
                                    "Route 1",
                                    style: AppFontStyle.mediumTextStyle(
                                        AppColors.primaryColor, 14.sp),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Checkpoint time: ",
                                    style: AppFontStyle.mediumTextStyle(
                                        AppColors.textColor, 12.sp),
                                  ),
                                  Text(
                                    "10:00 AM",
                                    style: AppFontStyle.mediumTextStyle(
                                        AppColors.primaryColor, 12.sp),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Status: ",
                                style: AppFontStyle.semiboldTextStyle(
                                    AppColors.textColor, 12.sp),
                              ),
                              Text(
                                "Ongoing",
                                style: AppFontStyle.semiboldTextStyle(
                                    AppColors.grayColor, 12.sp),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Container(
                            margin: EdgeInsets.all(8.w),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 10.h),
                            decoration: BoxDecoration(
                                color: AppColors.primaryBackColor,
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(5.r, 5.r))),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Tasks: ',
                                            style: AppFontStyle.mediumTextStyle(
                                                AppColors.black, 14.sp),
                                          ),
                                          Text(
                                            '07',
                                            style: AppFontStyle.mediumTextStyle(
                                                AppColors.primaryColor, 14.sp),
                                          ),
                                        ],
                                      ),
                                      const Icon(
                                        Icons.expand_more,
                                        color: AppColors.primaryColor,
                                        size: 24,
                                      ),
                                    ],
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.w),
                                    decoration: BoxDecoration(
                                        color: AppColors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(5.r, 5.r))),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                              child: CheckboxListTile(
                                                contentPadding: EdgeInsets.zero,
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .leading,
                                                title: Text(
                                                  'Met with manager',
                                                  style: AppFontStyle
                                                      .mediumTextStyle(
                                                          AppColors.textColor,
                                                          14.sp),
                                                ),
                                                autofocus: false,
                                                activeColor:
                                                    AppColors.primaryColor,
                                                checkColor: Colors.white,
                                                selected: _value,
                                                value: _value,
                                                onChanged: (bool? value) {
                                                  setState(() {
                                                    _value = value!;
                                                  });
                                                },
                                              ),
                                            ),
                                            const Icon(
                                              Icons.expand_more,
                                              color: AppColors.primaryColor,
                                              size: 24,
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'Added report',
                                          style: AppFontStyle.mediumTextStyle(
                                              AppColors.textColor, 15.sp),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: AppColors.white,
                                              border: Border.all(
                                                  width: 1.w,
                                                  color:
                                                      AppColors.primaryColor),
                                              borderRadius: BorderRadius.all(
                                                  Radius.elliptical(5.r, 5.r))),
                                          child: Padding(
                                            padding: EdgeInsets.all(8.w),
                                            child: Text(
                                              'Porem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra,',
                                              style:
                                                  AppFontStyle.mediumTextStyle(
                                                      AppColors.grayColor,
                                                      13.sp),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Image.asset(
                                              'assets/property_image.jpeg',
                                              width: 54.w,
                                              height: 54.h,
                                              fit: BoxFit.contain,
                                            ),
                                            Image.asset(
                                              'assets/property_image.jpeg',
                                              width: 54.w,
                                              height: 54.h,
                                              fit: BoxFit.contain,
                                            ),
                                            Image.asset(
                                              'assets/property_image.jpeg',
                                              width: 54.w,
                                              height: 54.h,
                                              fit: BoxFit.contain,
                                            ),
                                            Image.asset(
                                              'assets/property_image.jpeg',
                                              width: 54.w,
                                              height: 54.h,
                                              fit: BoxFit.contain,
                                            ),
                                            Image.asset(
                                              'assets/property_image.jpeg',
                                              width: 54.w,
                                              height: 54.h,
                                              fit: BoxFit.contain,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Container(
                                          child: AppButton(
                                            onTaps: () {},
                                            backgoundColor:
                                                AppColors.primaryColor,
                                            textColor: AppColors.white,
                                            titleText: 'Download',
                                            borderColor: AppColors.primaryColor,
                                            isIcon: false,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        )
                                      ],
                                    ),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }),
            ),
          ])),
    );
  }
}
