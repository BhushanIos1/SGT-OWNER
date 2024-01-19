import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class PropertyCarousal extends StatefulWidget {
  const PropertyCarousal({super.key});

  @override
  State<PropertyCarousal> createState() => _PropertyCarousalState();
}

class _PropertyCarousalState extends State<PropertyCarousal> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(height: 250.h),
          items: [1, 2, 3, 4].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                  ),
                  child: Image.asset(
                    'assets/property_image.jpeg',
                    width: Get.width - 32.w,
                    // height: 178.h,
                    fit: BoxFit.fill,
                  ),
                );
              },
            );
          }).toList(),
        ),
        SizedBox(
          height: 16.h,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          width: Get.width - 32.w,
          decoration: BoxDecoration(
              color: AppColors.primaryBackColor,
              borderRadius: BorderRadius.all(Radius.elliptical(5.r, 5.r))),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Property Name: ',
                      style:
                          AppFontStyle.mediumTextStyle(AppColors.black, 14.sp),
                    ),
                    Text(
                      'Radission Blu Hotel',
                      style: AppFontStyle.mediumTextStyle(
                          AppColors.primaryColor, 14.sp),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Address: ',
                      style:
                          AppFontStyle.mediumTextStyle(AppColors.black, 14.sp),
                    ),
                    Text(
                      'New South Hampton USA.',
                      style: AppFontStyle.mediumTextStyle(
                          AppColors.primaryColor, 14.sp),
                    ),
                  ],
                ),
                Text(
                  'Property description: ',
                  style: AppFontStyle.mediumTextStyle(AppColors.black, 14.sp),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Text(
                    'This is a Property description area where in person can write basic description of the property. ',
                    style: AppFontStyle.mediumTextStyle(
                        AppColors.textColor, 14.sp),
                  ),
                ),
              ]),
        ),
      ],
    );
  }
}
