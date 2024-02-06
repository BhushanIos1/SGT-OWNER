// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/feature/authentication/payment/controller/billing_address_controller.dart';
import 'package:sgt_owner/shared/widgets/custom_appbar.dart';
import 'package:sgt_owner/shared/widgets/custom_buttons.dart';
import 'package:sgt_owner/shared/widgets/custom_textfield.dart';
import 'package:sgt_owner/shared/widgets/dashed.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class PaymentDetailsPage extends StatefulWidget {
  const PaymentDetailsPage({super.key});

  @override
  State<PaymentDetailsPage> createState() => _PaymentDetailsPageState();
}

class _PaymentDetailsPageState extends State<PaymentDetailsPage> {
  final billingAddressController = Get.put(BillingAddressController());
  // PasswordController pCTRL = Get.put(PasswordController());
  // final _streetAddressFocus = FocusNode();

  @override
  void dispose() {
    super.dispose();
    // _streetAddressFocus.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CustomAppBar(
        titleText: 'Payment',
        isLeading: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Column(children: [
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 12.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Order Summary',
                              style: AppFontStyle.semiboldTextStyle(
                                  AppColors.black, 16.sp),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // color: AppColors.primaryBackColor,
                        width: 327.w,
                        height: 60.h,
                        decoration: BoxDecoration(
                            color: AppColors.backgroundColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(6.r)),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.disableColor.withAlpha(50),
                                blurRadius: 1.0,
                              )
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Image.asset(
                                            'silver_plan.png',
                                            fit: BoxFit.contain,
                                            width: 24.w,
                                            height: 24.h,
                                          ),
                                          SizedBox(
                                            width: 3.w,
                                          ),
                                          Text(
                                            'Silver',
                                            style: AppFontStyle.mediumTextStyle(
                                                AppColors.black, 16.sp),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Monthly Plan',
                                        textAlign: TextAlign.end,
                                        style: AppFontStyle.regularTextStyle(
                                            AppColors.grayColor, 12.sp),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "\$25",
                                    style: AppFontStyle.mediumTextStyle(
                                        AppColors.black, 16.sp),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      // params status
                      Get.parameters['payment'].toString() == 'true' ?
                        Container(
                          width: 327.w,
                          height: 54.h,
                          decoration: BoxDecoration(
                              color: AppColors.backgroundColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6.r)),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.disableColor.withAlpha(50),
                                  blurRadius: 1.0,
                                )
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () => {Get.toNamed("/apply_coupon")},
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Apply Coupon",
                                    style: AppFontStyle.mediumTextStyle(
                                        AppColors.black, 14.sp),
                                  ),
                                  Icon(
                                    Icons.arrow_right,
                                    color: AppColors.primaryColor,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                        :
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DottedBorder(
                            radius: Radius.circular(10.r),
                            color: AppColors.primaryColor,
                            strokeWidth: 1,
                            child: Container(
                              width: 327.w,
                              height: 104.h,
                              decoration: BoxDecoration(
                                  color: AppColors.backgroundColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6.r)),
                                  boxShadow: [
                                    BoxShadow(
                                      color:
                                          AppColors.disableColor.withAlpha(50),
                                      blurRadius: 1.0,
                                    )
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Image.asset(
                                                  'silver_plan.png',
                                                  fit: BoxFit.contain,
                                                  width: 24.w,
                                                  height: 24.h,
                                                ),
                                                SizedBox(
                                                  width: 3.w,
                                                ),
                                                Text(
                                                  'SGTSUPER100',
                                                  style: AppFontStyle
                                                      .mediumTextStyle(
                                                          AppColors.black,
                                                          16.sp),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              'Save \$5 on this order',
                                              textAlign: TextAlign.end,
                                              style:
                                                  AppFontStyle.regularTextStyle(
                                                      AppColors.greenColor,
                                                      12.sp),
                                            ),
                                          ],
                                        ),
                                        GestureDetector(
                                          onTap: () => {
                                            Get.toNamed('/payment_details',
                                                parameters: {"payment": "true"})
                                          },
                                          child: Text(
                                            "Remove",
                                            style:
                                                AppFontStyle.semiboldTextStyle(
                                                    AppColors.primaryColor,
                                                    14.sp),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const MySeparator(
                                        color: AppColors.primaryColor),
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          onTap: () => {
                                            Get.toNamed("/apply_coupon")
                                          },
                                          child: Text(
                                            "View more coupons",
                                            style: AppFontStyle.semiboldTextStyle(
                                                AppColors.black, 16.sp),
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_right,
                                          color: AppColors.primaryColor,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Container(
                        width: 327.w,
                        height: 118.h,
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(6.r)),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.disableColor.withAlpha(50),
                                blurRadius: 1.0,
                              )
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Plan Amount",
                                    style: AppFontStyle.mediumTextStyle(
                                        AppColors.black, 14.sp),
                                  ),
                                  Text(
                                    "\$25",
                                    style: AppFontStyle.mediumTextStyle(
                                        AppColors.black, 14.sp),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Taxes",
                                    style: AppFontStyle.mediumTextStyle(
                                        AppColors.black, 14.sp),
                                  ),
                                  Text(
                                    "\$5",
                                    style: AppFontStyle.mediumTextStyle(
                                        AppColors.black, 14.sp),
                                  ),
                                ],
                              ),
                              if (Get.parameters['CouponStatus'].toString() ==
                                  'Successful')
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Discount Coupon",
                                      style: AppFontStyle.mediumTextStyle(
                                          AppColors.black, 14.sp),
                                    ),
                                    Text(
                                      "\$5",
                                      style: AppFontStyle.mediumTextStyle(
                                          AppColors.black, 14.sp),
                                    ),
                                  ],
                                ),
                              Get.parameters['CouponStatus'].toString() == 'Successful' ?
                              Container(
                                color: AppColors.backgroundColor,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Total Amount",
                                      style: AppFontStyle.boldTextStyle(
                                          AppColors.primaryColor, 14.sp),
                                    ),
                                    Text(
                                      "\$25",
                                      style: AppFontStyle.boldTextStyle(
                                          AppColors.primaryColor, 14.sp),
                                    ),
                                  ],
                                ),
                              ):Container(
                                color: AppColors.backgroundColor,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Total Amount",
                                      style: AppFontStyle.boldTextStyle(
                                          AppColors.primaryColor, 14.sp),
                                    ),
                                    Text(
                                      "\$30",
                                      style: AppFontStyle.boldTextStyle(
                                          AppColors.primaryColor, 14.sp),
                                    ),
                                  ],
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
              SizedBox(
                height: 24.h,
              ),
              Column(
                children: [
                  // Obx(() =>
                  AppButton(
                      onTaps: () {
                        Get.defaultDialog(middleText: "Payment is Successfully done");
                        // billingAddressController.checkValidFormField();
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
                  SizedBox(
                    height: 38.h,
                  ),
                ],
              )
            ])
          ],
        ),
      ),
    );
  }
}
