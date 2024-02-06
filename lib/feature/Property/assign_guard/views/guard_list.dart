import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sgt_owner/shared/widgets/custom_buttons.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class GuardList extends StatelessWidget {
  const GuardList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius:
              BorderRadius.all(Radius.elliptical(10.r, 10.r))),
      child: Column(children: [
        Container(
          color: AppColors.primaryColor,
          padding: EdgeInsets.symmetric(horizontal: 19, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Available Guards',
                style: AppFontStyle.mediumTextStyle(
                    AppColors.white, 16.sp),
              ),
              Text(
                '9',
                style: AppFontStyle.mediumTextStyle(
                    AppColors.white, 16.sp),
              ),
            ],
          ),
        ),
        Container(
            color: AppColors.white,
            height: 300.h,
            child: MyListView()),
        Container(
          color: AppColors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 32, vertical: 9),
            child: AppButton(
                onTaps: () {
                  // createCheckpointController.checkLogin();
                },
                backgoundColor:
                    // createCheckpointController.btnEnabled.value0
                    //     ?
                    AppColors.primaryColor,
                //     :
                // AppColors.disableColor,
                textColor: AppColors.white,
                titleText: "Done"),
          ),
        )
      ]),
    );
  }
}

class MyListView extends StatefulWidget {
  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  // Sample data for the list
  final List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
  ];

  List<bool> checkbox = [
    false,
    false,
    false,
    true,
    true,
    false,
    false,
    true,
    true
  ];

  @override
  Widget build(BuildContext context) {
    return GlowingOverscrollIndicator(
      color: AppColors.primaryColor,
      axisDirection: AxisDirection.down,
      child: RawScrollbar(
        minThumbLength: 40.h,
        thumbColor: AppColors.primaryColor,
        radius: Radius.circular(20),
        thickness: 5,
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.all(2),
              color: AppColors.white,
              child: Row(children: [
                Container(
                    width: 35.w,
                    height: 100.h,
                    color: AppColors.greenColor,
                    child: RotationTransition(
                      turns: AlwaysStoppedAnimation(90 / 360),
                      child: Center(
                        child: Text('Available',
                            style: AppFontStyle.semiboldTextStyle(
                                AppColors.white, 8.sp),
                            softWrap: false),
                      ),
                    )),
                Expanded(
                  child: CheckboxListTile(
                    side: const BorderSide(color: AppColors.primaryColor),
                    activeColor: AppColors.primaryColor,
                    checkColor: AppColors.white,
                    title: Container(
                      child: Row(
                        children: [
                          Container(
                              child: CircleAvatar(
                            backgroundColor: AppColors.lightPrimaryColor,
                            radius: 36.r,
                            child: CircleAvatar(
                              radius: 35.r,
                              backgroundColor: AppColors.lightPrimaryColor,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(35.r),
                                  child: Image.asset(
                                    "assets/splash_1.png",
                                    fit: BoxFit.fill,
                                    width: 70.w,
                                    height: 70.h,
                                  )),
                            ),
                          )),
                          SizedBox(
                            width: 8.w,
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  items[index].toString(),
                                  style: AppFontStyle.mediumTextStyle(
                                      AppColors.primaryColor, 16.sp),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Email: ",
                                      style: AppFontStyle.mediumTextStyle(
                                          AppColors.black, 12.sp),
                                    ),
                                    Text(
                                      items[index].toString(),
                                      style: AppFontStyle.mediumTextStyle(
                                          AppColors.primaryColor, 12.sp),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Phone Number: ",
                                      style: AppFontStyle.mediumTextStyle(
                                          AppColors.black, 12.sp),
                                    ),
                                    Text(
                                      items[index].toString(),
                                      style: AppFontStyle.mediumTextStyle(
                                          AppColors.primaryColor, 12.sp),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    value: checkbox[index],
                    onChanged: (value) {
                      setState(
                        () {
                          checkbox[index] = value!;
                        },
                      );
                    },
                    controlAffinity: ListTileControlAffinity.platform,
                  ),
                ),
              ]),
            );
          },
        ),
      ),
    );
  }
}