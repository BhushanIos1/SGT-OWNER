// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/shared/widgets/custom_appbar.dart';
import 'package:sgt_owner/shared/widgets/custom_buttons.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SelectedPlanPage extends StatefulWidget {
  const SelectedPlanPage({super.key});

  @override
  State<SelectedPlanPage> createState() => _SelectedPlanPageState();
}

class _SelectedPlanPageState extends State<SelectedPlanPage>
    with TickerProviderStateMixin {
  bool mProperties = true;
  bool mShifts = true;
  bool mCheckpoints = true;
  bool mGuards = true;
  bool mMessenger = false;
  bool yProperties = true;
  bool yShifts = true;
  bool yCheckpoints = true;
  bool yGuards = true;
  bool yMessenger = true;
  late TabController _tabController;

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          titleText: 'Select a plan',
          isLeading: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Material(
              color: AppColors.disableColor,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.w, right: 10.w),
                    child: TabBar(
                      tabAlignment: TabAlignment.fill,
                      padding: EdgeInsets.zero,
                      controller: _tabController,
                      // indicatorWeight: 2,
                      tabs: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40.w),
                          child: Tab(
                            child: Text(
                              'Monthly',
                              style: AppFontStyle.regularTextStyle(
                                  AppColors.white, 16.sp),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 48.w),
                          child: Tab(
                            child: Text(
                              'Yearly',
                              style: AppFontStyle.regularTextStyle(
                                  AppColors.white, 16.sp),
                            ),
                          ),
                        ),
                      ],
                      indicatorColor: Colors.transparent,
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.black,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.primaryColor),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Flexible(
              child: TabBarView(
                controller: _tabController,
                children: [
                  CarouselSlider(
                    options: CarouselOptions(height: 600.h),
                    items: [1, 2, 3].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              color: AppColors.white,
                            ),
                            child: Container(
                              height: 307.h,
                              width: 259.w,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.change_circle,
                                          color: AppColors.primaryColor,
                                        ),
                                      ),
                                      Text(
                                        'Silver',
                                        style: AppFontStyle.mediumTextStyle(
                                            AppColors.primaryColor, 22.sp),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Optimal  For 10+ team size and new startup',
                                    style: AppFontStyle.regularTextStyle(
                                        AppColors.black, 12.sp),
                                  ),
                                  SizedBox(
                                    height: 19.h,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '\$100',
                                        style: AppFontStyle.semiboldTextStyle(
                                            AppColors.black, 24.sp),
                                      ),
                                      Text(
                                        '/mo',
                                        style: AppFontStyle.semiboldTextStyle(
                                            AppColors.black, 18.sp),
                                      ),
                                    ],
                                  ),
                                  CheckboxListTile(
                                    title: Text(
                                      '5 Properties',
                                      style: AppFontStyle.regularTextStyle(
                                          AppColors.black, 14.sp),
                                    ),
                                    value: mProperties,
                                    checkboxShape: const CircleBorder(),
                                    checkColor: AppColors.white,
                                    activeColor: AppColors.primaryColor,
                                    onChanged: (value) {
                                      setState(() {
                                        mProperties = value!;
                                      });
                                    },
                                  ),
                                  CheckboxListTile(
                                    title: Text(
                                      '10 Shifts',
                                      style: AppFontStyle.regularTextStyle(
                                          AppColors.black, 14.sp),
                                    ),
                                    value: mShifts,
                                    checkboxShape: const CircleBorder(),
                                    activeColor: AppColors.primaryColor,
                                    onChanged: (value) {
                                      setState(() {
                                        mShifts = value!;
                                      });
                                    },
                                  ),
                                  CheckboxListTile(
                                    title: Text(
                                      '10 Checkpoints',
                                      style: AppFontStyle.regularTextStyle(
                                          AppColors.black, 14.sp),
                                    ),
                                    value: mCheckpoints,
                                    checkboxShape: const CircleBorder(),
                                    activeColor: AppColors.primaryColor,
                                    onChanged: (value) {
                                      setState(() {
                                        mCheckpoints = value!;
                                      });
                                    },
                                  ),
                                  CheckboxListTile(
                                    title: Text(
                                      '10 Guards',
                                      style: AppFontStyle.regularTextStyle(
                                          AppColors.black, 14.sp),
                                    ),
                                    value: mGuards,
                                    checkboxShape: const CircleBorder(),
                                    activeColor: AppColors.primaryColor,
                                    onChanged: (value) {
                                      setState(() {
                                        mGuards = value!;
                                      });
                                    },
                                  ),
                                  CheckboxListTile(
                                    title: Text(
                                      'Messenger',
                                      style: AppFontStyle.regularTextStyle(
                                          AppColors.black, 14.sp),
                                    ),
                                    value: mMessenger,
                                    checkboxShape: const CircleBorder(),
                                    activeColor: AppColors.primaryColor,
                                    onChanged: (value) {
                                      setState(() {
                                        mMessenger = value!;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  CarouselSlider(
                    options: CarouselOptions(height: 600.h),
                    items: [1, 2, 3].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                color: AppColors.white,
                              ),
                              child: Container(
                                height: 307.h,
                                width: 259.w,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.change_circle,
                                            color: AppColors.greenColor,
                                          ),
                                        ),
                                        Text(
                                          'Platinum',
                                          style: AppFontStyle.mediumTextStyle(
                                              AppColors.primaryColor, 22.sp),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Optimal  For 10+ team size and new startup',
                                      style: AppFontStyle.regularTextStyle(
                                          AppColors.black, 12.sp),
                                    ),
                                    SizedBox(
                                      height: 19.h,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '\$200',
                                          style: AppFontStyle.semiboldTextStyle(
                                              AppColors.black, 24.sp),
                                        ),
                                        Text(
                                          '/yr',
                                          style: AppFontStyle.semiboldTextStyle(
                                              AppColors.black, 18.sp),
                                        ),
                                      ],
                                    ),
                                    CheckboxListTile(
                                      title: Text(
                                        '5 Properties',
                                        style: AppFontStyle.regularTextStyle(
                                            AppColors.black, 14.sp),
                                      ),
                                      value: yProperties,
                                      checkboxShape: const CircleBorder(),
                                      activeColor: AppColors.primaryColor,
                                      onChanged: (value) {
                                        setState(() {
                                          yProperties = value!;
                                        });
                                      },
                                    ),
                                    CheckboxListTile(
                                      title: Text(
                                        '10 Shifts',
                                        style: AppFontStyle.regularTextStyle(
                                            AppColors.black, 14.sp),
                                      ),
                                      value: yShifts,
                                      checkboxShape: const CircleBorder(),
                                      activeColor: AppColors.primaryColor,
                                      onChanged: (value) {
                                        setState(() {
                                          yShifts = value!;
                                        });
                                      },
                                    ),
                                    CheckboxListTile(
                                      title: Text(
                                        '10 Checkpoints',
                                        style: AppFontStyle.regularTextStyle(
                                            AppColors.black, 14.sp),
                                      ),
                                      activeColor: AppColors.primaryColor,
                                      value: yCheckpoints,
                                      checkboxShape: const CircleBorder(),
                                      onChanged: (value) {
                                        setState(() {
                                          yCheckpoints = value!;
                                        });
                                      },
                                    ),
                                    CheckboxListTile(
                                      title: Text(
                                        '10 Guards',
                                        style: AppFontStyle.regularTextStyle(
                                            AppColors.black, 14.sp),
                                      ),
                                      value: yGuards,
                                      checkboxShape: const CircleBorder(),
                                      activeColor: AppColors.primaryColor,
                                      onChanged: (value) {
                                        setState(() {
                                          yGuards = value!;
                                        });
                                      },
                                    ),
                                    CheckboxListTile(
                                      title: Text(
                                        'Messenger',
                                        style: AppFontStyle.regularTextStyle(
                                            AppColors.black, 14.sp),
                                      ),
                                      activeColor: AppColors.primaryColor,
                                      value: yMessenger,
                                      checkboxShape: const CircleBorder(),
                                      onChanged: (value) {
                                        setState(() {
                                          yMessenger = value!;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ));
                        },
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            Center(
              child: AppButton(
                  onTaps: () {
                    // billingAddressController.checkValidFormField();
                    Get.toNamed("/billing_address");
                  },
                  backgoundColor:
                      // billingAddressController.btnEnabled.value
                      //         ?
                      AppColors.primaryColor,
                  // : AppColors.disableColor,
                  textColor: AppColors.white,
                  titleText: "Next"
                  // )
                  ),
            ),
            SizedBox(
              height: 38.h,
            ),
          ],
        ));
  }
}
