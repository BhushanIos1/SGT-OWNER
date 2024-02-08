import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sgt_owner/feature/More/staff_screen/staff_list_modal.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class StaffList extends StatefulWidget {
  const StaffList({super.key});

  @override
  State<StaffList> createState() => _StaffListState();
}

class _StaffListState extends State<StaffList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: dummyModalData.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.all(Radius.elliptical(5.r, 5.r)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5.r,
                    blurRadius: 7.r,
                    offset: Offset(0.w, 3.h), // changes position of shadow
                  ),
                ],
              ),
              margin: EdgeInsets.all(2),
              child: Padding(
                padding:  EdgeInsets.all(8),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(93.r),
                                    child: Image.network(
                                      dummyModalData[index].image.toString(),
                                      fit: BoxFit.fill,
                                      width: 54.w,
                                      height: 54.h,
                                    )),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      dummyModalData[index].name.toString(),
                                      style: AppFontStyle.semiboldTextStyle(
                                          AppColors.primaryColor, 16.sp),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Role: ",
                                          style: AppFontStyle.semiboldTextStyle(
                                              AppColors.textColor, 14.sp),
                                        ),
                                        Text(
                                          dummyModalData[index].role.toString(),
                                          style: AppFontStyle.semiboldTextStyle(
                                              AppColors.primaryColor, 14.sp),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Icon(
                          Icons.more_vert,
                          color: AppColors.secondaryColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
