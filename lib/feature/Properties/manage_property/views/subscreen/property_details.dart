import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/shared/widgets/custom_buttons.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class PropertyDetails extends StatefulWidget {
  const PropertyDetails({super.key});

  @override
  State<PropertyDetails> createState() => _PropertyDetailsState();
}

class _PropertyDetailsState extends State<PropertyDetails> {
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

  final List<String> items = [
    'Hallway shift',
    'Hallway shift',
    'Hallway shift',
    'Hallway shift',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        // color: AppColors.white,
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(height: 250.h, viewportFraction: 1),
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
                      child: Image.network(
                        images[pagePosition],
                        fit: BoxFit.cover,
                        width: 443.w,
                        height: 178.h,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: indicators(images.length, activePage)),
            SizedBox(
              height: 10.h,
            ),
            const Divider(
              color: AppColors.secondaryColor,
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              width: Get.width - 32.w,
              decoration: BoxDecoration(
                  color: AppColors.primaryBackColor,
                  borderRadius: BorderRadius.all(Radius.elliptical(5.r, 5.r))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Property Details',
                        style: AppFontStyle.mediumTextStyle(
                            AppColors.black, 14.sp),
                      ),
                      const Icon(
                        Icons.edit_document,
                        color: AppColors.primaryColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    width: Get.width - 32.w,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(5.r, 5.r))),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Property Name: ',
                                style: AppFontStyle.mediumTextStyle(
                                    AppColors.black, 14.sp),
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
                                style: AppFontStyle.mediumTextStyle(
                                    AppColors.black, 14.sp),
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
                            style: AppFontStyle.mediumTextStyle(
                                AppColors.black, 14.sp),
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
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: Get.width - 32.w,
              decoration: BoxDecoration(
                  color: AppColors.white,
                  border: Border.all(width: 1.w, color: AppColors.disableColor),
                  borderRadius: BorderRadius.all(Radius.elliptical(5.r, 5.r))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.elliptical(5.r, 5.r),
                          topRight: Radius.elliptical(5.r, 5.r)),
                      color: AppColors.primaryColor,
                    ),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.r),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/real_time_guard.png',
                            width: 18.w,
                            height: 29.h,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            'Real time guard location',
                            style: AppFontStyle.semiboldTextStyle(
                                AppColors.white, 16.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(8.w),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      // items[index].toString(),
                                      "Shift Name",
                                      style: AppFontStyle.regularTextStyle(
                                          AppColors.textColor, 12.sp),
                                    ),
                                    Text(
                                      // items[index].toString(),
                                      "Hallway Shift",
                                      style: AppFontStyle.semiboldTextStyle(
                                          AppColors.primaryColor, 18.sp),
                                    ),
                                  ],
                                ),
                                Text(
                                  "View on Map",
                                  style: AppFontStyle.semiboldTextStyle(
                                      AppColors.primaryColor, 14.sp),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Column(
                              children: [
                                ListView.builder(
                                    scrollDirection: Axis.vertical,
                                    shrinkWrap: true,
                                    itemCount: items.length,
                                    itemBuilder: (context, index) {
                                      return Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1.w,
                                                    color:
                                                        AppColors.disableColor),
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(
                                                        5.r, 5.r))),
                                            child: Padding(
                                              padding: EdgeInsets.all(8.w),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      93.r),
                                                          child: Image.asset(
                                                            "assets/splash_1.png",
                                                            fit: BoxFit.fill,
                                                            width: 54.w,
                                                            height: 54.h,
                                                          )),
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              const Icon(
                                                                Icons.badge,
                                                                size: 18,
                                                                color: AppColors
                                                                    .primaryColor,
                                                              ),
                                                              SizedBox(
                                                                width: 8.w,
                                                              ),
                                                              Text(
                                                                "Guard Name",
                                                                style: AppFontStyle
                                                                    .semiboldTextStyle(
                                                                        AppColors
                                                                            .textColor,
                                                                        14.sp),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: 8.h,
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              const Icon(
                                                                Icons.cable,
                                                                color: AppColors
                                                                    .primaryColor,
                                                              ),
                                                              SizedBox(
                                                                width: 8.w,
                                                              ),
                                                              Text(
                                                                "Route 1",
                                                                style: AppFontStyle
                                                                    .semiboldTextStyle(
                                                                        AppColors
                                                                            .textColor,
                                                                        14.sp),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 8.h,
                                                  ),
                                                  const Divider(
                                                    color:
                                                        AppColors.disableColor,
                                                  ),
                                                  SizedBox(
                                                    height: 8.h,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          const Icon(
                                                            Icons.location_on,
                                                            color: AppColors
                                                                .primaryColor,
                                                          ),
                                                          SizedBox(
                                                            width: 8.w,
                                                          ),
                                                          Text(
                                                            "Checkpoint 1",
                                                            style: AppFontStyle
                                                                .semiboldTextStyle(
                                                                    AppColors
                                                                        .textColor,
                                                                    14.sp),
                                                          ),
                                                        ],
                                                      ),
                                                      Text(
                                                        "10:00 AM",
                                                        style: AppFontStyle
                                                            .regularTextStyle(
                                                                AppColors
                                                                    .textColor,
                                                                14.sp),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 8.h,
                                                  ),
                                                  Row(
                                                    children: [
                                                      const Icon(
                                                        Icons.assignment,
                                                        color: AppColors
                                                            .primaryColor,
                                                      ),
                                                      SizedBox(
                                                        width: 8.w,
                                                      ),
                                                      Text(
                                                        "Emergency Report",
                                                        style: AppFontStyle
                                                            .semiboldTextStyle(
                                                                AppColors
                                                                    .textColor,
                                                                14.sp),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 8.h,
                                                  ),
                                                  Container(
                                                    padding:
                                                        EdgeInsets.all(8.w),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.elliptical(
                                                                  5.r, 5.r)),
                                                      color: AppColors
                                                          .primaryBackColor,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            const Icon(
                                                              Icons
                                                                  .work_history,
                                                              color: AppColors
                                                                  .primaryColor,
                                                            ),
                                                            SizedBox(
                                                              width: 8.w,
                                                            ),
                                                            Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  "10:20 PM",
                                                                  style: AppFontStyle
                                                                      .semiboldTextStyle(
                                                                          AppColors
                                                                              .textColor,
                                                                          14.sp),
                                                                ),
                                                                Text(
                                                                  "Delayed 20 min ",
                                                                  style: AppFontStyle
                                                                      .mediumTextStyle(
                                                                          AppColors
                                                                              .redColor,
                                                                          10.sp),
                                                                ),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                        Container(
                                                          alignment:
                                                              Alignment.center,
                                                          width: 142.w,
                                                          child: AppButton(
                                                              onTaps: () {},
                                                              backgoundColor:
                                                                  AppColors
                                                                      .primaryColor,
                                                              textColor:
                                                                  AppColors
                                                                      .white,
                                                              titleText:
                                                                  "Map view"),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),            
                                          SizedBox(
                                            height: 8.h,
                                          ),
                                        ],
                                      );
                                    }),
                                SizedBox(
                                  height: 12.h,
                                ),
                              ],
                            ),
                          SizedBox(
                            height: 6.h,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> indicators(imagesLength, currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: EdgeInsets.all(3.w),
        width: 10.w,
        height: 10.h,
        decoration: BoxDecoration(
            color: currentIndex == index
                ? AppColors.primaryColor
                : AppColors.secondaryColor,
            shape: BoxShape.circle),
      );
    });
  }
}
