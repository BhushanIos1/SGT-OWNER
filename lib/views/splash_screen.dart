// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/feature/authentication/payment/views/oops_coupon_popup.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(Duration(seconds: 2), () {
      // Get.offNamed("/getStart");
      // Get.toNamed("/billing_address");
      Get.toNamed("/payment_details",parameters: {"CouponStatus":"Successful"});
      // Get.toNamed("/apply_coupon");
      // Get.toNamed("/oops_popUp");
      // Get.toNamed("/coupon_applied_popup");
      // Get.toNamed("/select_plan");
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Image(
              width: double.infinity,
              height: 230.h,
              fit: BoxFit.fill,
              image: AssetImage('assets/splash_1.png'),
            ),
            SizedBox(
              height: 30.h,
            ),
            Stack(children: [
              Image(
                width: double.infinity,
                height: 400.h,
                fit: BoxFit.fill,
                image: AssetImage('assets/splash_3.png'),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 170.h,
                child: Image(
                  width: double.infinity,
                  height: 250.h,
                  fit: BoxFit.fitHeight,
                  image: AssetImage('assets/splash_2.png'),
                ),
              ),
            ]),
            SizedBox(
              height: 22.h,
            ),
            Text(
              'App version 1.0',
              style: AppFontStyle.mediumTextStyle(AppColors.white, 12.sp),
            ),
          ],
        ),
      ),
    );
  }
}
