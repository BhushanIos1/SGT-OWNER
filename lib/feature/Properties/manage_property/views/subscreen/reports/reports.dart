// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sgt_owner/feature/Properties/manage_property/views/subscreen/reports/tab_screens/emergency.dart';
import 'package:sgt_owner/feature/Properties/manage_property/views/subscreen/reports/tab_screens/general.dart';
import 'package:sgt_owner/feature/Properties/manage_property/views/subscreen/reports/tab_screens/maintanance.dart';
import 'package:sgt_owner/feature/Properties/manage_property/views/subscreen/reports/tab_screens/parking.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class Reports extends StatefulWidget {
  const Reports({super.key});

  @override
  State<Reports> createState() => _ReportsState();
}

class _ReportsState extends State<Reports>
    with TickerProviderStateMixin {
  bool expand = true;
  bool expanded = true;
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
      length: 4,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Material(
            color: AppColors.primaryBackColor,
            child: Column(
              children: [
                TabBar(
                  isScrollable: false,
                  tabAlignment: TabAlignment.fill,
                  // padding: EdgeInsets.zero,
                  controller: _tabController,
                  // indicatorWeight: 2,
                  tabs: [
                    Padding(
                      padding: EdgeInsets.all(8.w),
                      child: Tab(
                        child: Text(
                          'General',
                          style: AppFontStyle.semiboldTextStyle(
                              AppColors.primaryColor, 8.sp),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.w),
                      child: Tab(
                        child: Text(
                          'Maintanance',
                          style: AppFontStyle.semiboldTextStyle(
                              AppColors.primaryColor, 8.sp),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.w),
                      child: Tab(
                        child: Text(
                          'Emergency',
                          style: AppFontStyle.semiboldTextStyle(
                              AppColors.primaryColor, 8.sp),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.w),
                      child: Tab(
                        child: Text(
                          'Parking',
                          style: AppFontStyle.semiboldTextStyle(
                              AppColors.primaryColor, 8.sp),
                        ),
                      ),
                    ),
                  ],
                  // indicatorColor: Colors.transparent,
                  // labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  indicator: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(5.r),
                      color: AppColors.white),
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
                GeneralReport(),
                MaintananceReport(),
                EmergencyReport(),
                ParkingReport(),
              ]),
          ),
        ]);
  
  }
}
