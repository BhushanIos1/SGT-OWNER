// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/feature/authentication/payment/controller/apply_coupon_controller.dart';
import 'package:sgt_owner/shared/widgets/custom_appbar.dart';
import 'package:sgt_owner/shared/widgets/custom_textfield.dart';
import 'package:sgt_owner/shared/widgets/dashed.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class ApplyCouponPage extends StatefulWidget {
  const ApplyCouponPage({super.key});

  @override
  State<ApplyCouponPage> createState() => _ApplyCouponPageState();
}

class _ApplyCouponPageState extends State<ApplyCouponPage> {
  final applyCouponController = Get.put(ApplyCouponController());
  final _couponCodeFocus = FocusNode();

  @override
  void dispose() {
    super.dispose();
    _couponCodeFocus.dispose();
    // _streetAddressFocus.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CustomAppBar(
        titleText: 'Apply coupon',
        isLeading: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 16.h,
              ),
              Center(
                child: Container(
                  width: Get.width - 32.w,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.all(Radius.circular(6.r)),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.disableColor.withAlpha(50),
                          blurRadius: 1.0,
                        )
                      ]),
                  child: Form(
                    key: applyCouponController.couponCodeFormKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: AppTextField(
                      controller: applyCouponController.couponCodeController,
                      labelText: "Coupon Code",
                      hintText: "Enter Coupon Code",
                      onSaved: (value) {
                        applyCouponController.couponCode = value!;
                      },
                      onTapOutside: (event) {
                        FocusScope.of(context).unfocus();
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Best coupon',
                  style: AppFontStyle.semiboldTextStyle(AppColors.black, 16.sp),
                ),
              ),
              SizedBox(height: 8.h),
              // CouponCard(couponCode,couponDetail,couponBrief,Offer),
              CouponCard(),
              
              Container(
                child: Card(
                  color: AppColors.white,
                  child: Row(
                    children: [
                      Container(
                          width: 45.w,
                          height: 140.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12.r),
                                bottomLeft: Radius.circular(12.r)),
                            color: AppColors.secondaryColor,
                          ),
                          child: RotationTransition(
                            turns: AlwaysStoppedAnimation(-90 / 360),
                            child: Center(
                              child: Text(
                                'CASHBACK',
                                style: AppFontStyle.semiboldTextStyle(
                                    AppColors.white, 14.sp),
                              ),
                            ),
                          )),
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              ListTile(
                                title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'SGTSUPER100',
                                      style: AppFontStyle.mediumTextStyle(
                                          AppColors.black, 16.sp),
                                    ),
                                    GestureDetector(
                                      onTap: () => {
                                        Get.toNamed("/oops_coupon_popUp")
                                      },
                                      child: Text(
                                        'Apply',
                                        style: AppFontStyle.semiboldTextStyle(
                                            AppColors.primaryColor, 14.sp),
                                      ),
                                    ),
                                  ],
                                ),
                                subtitle: Text(
                                  'Not applicable on this plan',
                                  style: AppFontStyle.mediumTextStyle(
                                      AppColors.redColor, 12.sp),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: const MySeparator(
                                    color: AppColors.disableColor),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Use code SGTSUPER100 & get 50% OFF.",
                                    style: AppFontStyle.regularTextStyle(
                                        AppColors.grayColor, 12.sp),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CouponCard extends StatefulWidget {
  // String? couponCode,couponDetail,couponBrief,offer;
  // couponCode, couponDetail, couponBrief, offer,
  const CouponCard({
    super.key,
  });

  @override
  State<CouponCard> createState() => _CouponCardState();
}

class _CouponCardState extends State<CouponCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: AppColors.white,
        child: Row(
          children: [
            Container(
                width: 45.w,
                height: 140.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.r),
                      bottomLeft: Radius.circular(12.r)),
                  color: AppColors.primaryColor,
                ),
                // color: AppColors.primaryColor,
                child: RotationTransition(
                  turns: AlwaysStoppedAnimation(-90 / 360),
                  child: Center(
                    child: Text(
                      '50% OFF',
                      // style:TextStyle(color: AppColors.white,fontSize: 16.sp,fontWeight: FontWeight.w700),
                      style: AppFontStyle.semiboldTextStyle(
                          AppColors.white, 16.sp),
                          // softWrap: false
                    ),
                  ),
                )),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'SGTWEEKENDS',
                            style: AppFontStyle.mediumTextStyle(
                                AppColors.black, 16.sp),
                          ),
                          GestureDetector(
                            onTap: () => {
                              Get.toNamed("/coupon_applied_popup")
                            },
                            child: Text(
                              'Apply',
                              style: AppFontStyle.semiboldTextStyle(
                                  AppColors.primaryColor, 14.sp),
                            ),
                          ),
                        ],
                      ),
                      subtitle: Text(
                        'Save \$5 on this order!',
                        style: AppFontStyle.mediumTextStyle(
                            AppColors.greenColor, 12.sp),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const MySeparator(color: AppColors.disableColor),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Use code SGTSUPER100 & get 50% OFF on orders above \$25. Maximum discount:\$5.',
                          style: AppFontStyle.regularTextStyle(
                              AppColors.grayColor, 12.sp),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
