import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/feature/More/staff_screen/staff_list.dart';
import 'package:sgt_owner/shared/widgets/custom_appbar.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class StaffScreen extends StatefulWidget {
  const StaffScreen({super.key});

  @override
  State<StaffScreen> createState() => _StaffScreenState();
}

class _StaffScreenState extends State<StaffScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CustomAppBar(
        titleText: 'Staff',
        isLeading: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'All Staffs',
                      style: AppFontStyle.semiboldTextStyle(
                          AppColors.textColor, 16.sp),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed('/add_staff');
                      },
                      child: Text(
                        '+ Add new Staff',
                        style: AppFontStyle.semiboldTextStyle(
                            AppColors.primaryColor, 16.sp),
                      ),
                    ),
                  ],
                ),
              ),
              const StaffList(),
            ]),
      ),
    );
  }
}
