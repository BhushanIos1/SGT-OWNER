import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/feature/authentication/login/views/login.dart';
import 'package:sgt_owner/shared/widgets/custom_buttons.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                    Image(
                      width: 372.w,
                      height: 380.h,
                      fit: BoxFit.fill,
                      image: const AssetImage('assets/splash_6.png'),
                    ),
                    Image(
                      width: 200.w,
                      height: 80.h,
                      fit: BoxFit.fill,
                      image: const AssetImage('assets/splash_4.png'),
                    ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AppButton(
                        onTaps: () {
                          Get.toNamed("/login");
                        },
                        backgoundColor: AppColors.disableColor,
                        textColor: AppColors.primaryColor,
                        titleText: 'Log In',
                        isIcon: false,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AppButton(
                        onTaps: () {Get.toNamed("/signup");},
                        backgoundColor: AppColors.primaryColor,
                        textColor: AppColors.white,
                        titleText: 'Sign Up',
                        borderColor: AppColors.white,
                        isIcon: false,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            " Terms & Conditions ",
                            style: AppFontStyle.semiboldTextStyle(
                                AppColors.white, 12.sp),
                          ),
                          Text(
                            "|",
                            style: AppFontStyle.semiboldTextStyle(
                                AppColors.white, 12.sp),
                          ),
                          Text(
                            " Privacy Policy ",
                            style: AppFontStyle.semiboldTextStyle(
                                AppColors.white, 12.sp),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ]),
              ),
            ]),
      ),
    );
  }
}
