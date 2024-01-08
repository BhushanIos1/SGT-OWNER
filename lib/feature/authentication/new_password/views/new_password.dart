// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/feature/authentication/new_password/controller/new_password_controller.dart';
import 'package:sgt_owner/feature/authentication/new_password/controller/newpassword_controller.dart';
import 'package:sgt_owner/shared/widgets/custom_appbar.dart';
import 'package:sgt_owner/shared/widgets/custom_buttons.dart';
import 'package:sgt_owner/shared/widgets/custom_textfield.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';
import 'package:sgt_owner/views/success_password_popup.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  final loginController = Get.put(NewPasswordController());
  NewConfirmController pCTRL = Get.put(NewConfirmController());

  final _passFocus1 = FocusNode();
  final _passFocus2 = FocusNode();

  @override
  void dispose() {
    super.dispose();
    _passFocus1.dispose();
    _passFocus2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CustomAppBar(
        titleText: 'Reset',
        isLeading: true,
      ),
      body: Stack(alignment: Alignment.topCenter, children: [
        Column(
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 16.h, left: 8),
                      child: Image.asset(
                        'assets/sgt_logo.png',
                        width: 73.w,
                        height: 31.h,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 22.h, left: 8, bottom: 5),
                      child: Text(
                        'Reset your password',
                        style: AppFontStyle.semiboldTextStyle(
                            AppColors.textColor, 17.sp),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 4.h, left: 8),
                      child: Text(
                        'We’ll ask for this password whenever you sign in.',
                        style: AppFontStyle.regularTextStyle(
                            AppColors.textColor, 12.sp),
                      ),
                    ),
                    Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 12.h),
                        child: Obx(
                          () => Form(
                            key: loginController.passFormKey1,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            child: AppTextField(
                              controller: loginController.passwordController1,
                              labelText: "New Password",
                              hintText: "Enter New Password",
                              obsecure: pCTRL.isHidden1.value,
                              suffix: IconButton(
                                icon: Icon(pCTRL.isHidden1.value
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                                color: AppColors.grayColor,
                                iconSize: 24,
                                onPressed: () {
                                  pCTRL.isHidden1.value =
                                      !pCTRL.isHidden1.value;
                                },
                              ),
                              keyboardType: TextInputType.visiblePassword,
                              focusNode: _passFocus1,
                              onSaved: (value) {
                                loginController.password1 = value!;
                              },
                              validator: (value) {
                                return loginController.validatePassword(value!);
                              },
                              onFieldSubmitted: (value) {
                                FocusScope.of(context)
                                    .requestFocus(_passFocus2);
                              },
                              onTapOutside: (event) {
                                FocusScope.of(context).unfocus();
                              },
                            ),
                          ),
                        )),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 8, right: 8, bottom: 16.h),
                        child: Obx(
                          () => Form(
                            key: loginController.passFormKey2,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            child: AppTextField(
                              controller: loginController.passwordController2,
                              labelText: "Confirm Password",
                              hintText: "Enter Confirm Password",
                              obsecure: pCTRL.isHidden2.value,
                              suffix: IconButton(
                                icon: Icon(pCTRL.isHidden2.value
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                                color: AppColors.grayColor,
                                iconSize: 24,
                                onPressed: () {
                                  pCTRL.isHidden2.value =
                                      !pCTRL.isHidden2.value;
                                },
                              ),
                              keyboardType: TextInputType.visiblePassword,
                              focusNode: _passFocus2,
                              onSaved: (value) {
                                loginController.password2 = value!;
                              },
                              validator: (value) {
                                return loginController.validatePassword(value!);
                              },
                            ),
                          ),
                        )),
                    Padding(
                      padding: EdgeInsets.only(left: 18, bottom: 16.h),
                      child: Text(
                        'Minimum 8 character, must be one uppercase letter, number & symbol.',
                        maxLines: 2,
                        style: AppFontStyle.regularTextStyle(
                            AppColors.secondaryColor, 12.sp),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 34.h,
          child: Column(
            children: [
              Obx(() => AppButton(
                  onTaps: () {
                    loginController.checkLogin();
                        Get.to(ShouldPopAlertDialog());
                  },
                  backgoundColor: loginController.btnEnabled.value && (loginController.passwordController1.text == loginController.passwordController2.text)
                      ? AppColors.primaryColor
                      : AppColors.disableColor,
                  textColor: AppColors.white,
                  titleText: "Set New Password")),
            ],
          ),
        ),
      ]),
    );
  }
}
