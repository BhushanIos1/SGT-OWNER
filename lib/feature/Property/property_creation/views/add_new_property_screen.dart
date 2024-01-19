// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/shared/widgets/custom_appbar.dart';
import 'package:sgt_owner/shared/widgets/custom_buttons.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class AddNewPropertyScreen extends StatefulWidget {
  const AddNewPropertyScreen({super.key});

  @override
  State<AddNewPropertyScreen> createState() => _AddNewPropertyScreenState();
}

class _AddNewPropertyScreenState extends State<AddNewPropertyScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CustomAppBar(
        titleText: 'Properties',
        isLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 16.h,
          ),
          Center(
            child: Image.asset(
              'assets/no_property_added.png',
              width: 236.w,
              height: 186.h,
              fit: BoxFit.contain,
            ),
          ),
          Text(
            "No Property Added",
            style: AppFontStyle.boldTextStyle(AppColors.black, 16.sp),
          ),
          SizedBox(
            height: 8.h,
          ),
          Column(
            children: [
              AppButton(
                  onTaps: () {
                    Get.toNamed("/property_creation");
                  },
                  backgoundColor: AppColors.primaryColor,
                  textColor: AppColors.white,
                  titleText: "+ Add New Property"),
              SizedBox(
                height: 32.h,
              ),
            ],
          )
        ],
      ),
      // bottomNavigationBar: CustomBottomTabBar(),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: AppColors.secondaryColor,
          selectedItemColor: AppColors.primaryColor,
          backgroundColor: AppColors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: 1,
          // onTap: (int i){setState((){index = i;});},
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.dashboard,
                ),
                label: 'Dashboard'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_balance,
                ),
                label: 'Properties'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.assignment_ind,
                ),
                label: 'Guards'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.question_answer,
                ),
                label: 'Messages'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
                ),
                label: 'More'),
          ]),
    );
  }
}
