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
  PageController? _pageController;
  int activePage = 1;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8);
  }

  List<String> images = [
    "https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrWZlbWU.jpg",
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(height: 250.h,viewportFraction: 1),
          items: images.map((i) {
            return PageView.builder(
              pageSnapping: true,
              controller: _pageController,
              onPageChanged: (page) {
                setState(() {
                  activePage = page;
                });
              },
              itemCount: images.length,
              itemBuilder: (context, pagePosition) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                  // decoration: BoxDecoration(
                  //   color: AppColors.white,
                  // ),
                  child: Image.network(images[pagePosition],fit: BoxFit.cover,width: 443.w,height: 178.h,),
                );
              },
            );
          }).toList(),
        ),
        SizedBox(
          height: 16.h,
        ),
         Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: indicators(images.length,activePage)),
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


  List<Widget> indicators(imagesLength,currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: EdgeInsets.all(3.w),
      width: 10.w,
      height: 10.h,
      decoration: BoxDecoration(
          color: currentIndex == index ? AppColors.primaryColor : AppColors.primaryBackColor,
          shape: BoxShape.circle),
    );
  });
}
}
