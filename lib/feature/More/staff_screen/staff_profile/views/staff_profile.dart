// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/feature/authentication/new_password/controller/newpassword_controller.dart';
import 'package:sgt_owner/shared/widgets/custom_appbar.dart';
import 'package:sgt_owner/shared/widgets/custom_buttons.dart';
import 'package:sgt_owner/shared/widgets/custom_textfield.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class StaffProfile extends StatefulWidget {
  const StaffProfile({super.key});

  @override
  State<StaffProfile> createState() => _StaffProfileState();
}

class _StaffProfileState extends State<StaffProfile> {
  bool activated = false;
  NewConfirmController pCTRL = Get.put(NewConfirmController());
  final _fNameFocus = FocusNode();
  final _lNameFocus = FocusNode();
  final _emailFocus = FocusNode();
  final _phoneFocus = FocusNode();
  final _passFocus1 = FocusNode();
  final _passFocus2 = FocusNode();

  @override
  void dispose() {
    super.dispose();
    _fNameFocus.dispose();
    _lNameFocus.dispose();
    _emailFocus.dispose();
    _phoneFocus.dispose();
    _passFocus1.dispose();
    _passFocus2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CustomAppBar(
        titleText: 'Staff Profile',
        isLeading: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 12.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Staff Status",
                                  style: AppFontStyle.semiboldTextStyle(
                                      AppColors.textColor, 16.sp),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                activated == false
                                    ? Text(
                                        "(inactive)",
                                        style: AppFontStyle.semiboldTextStyle(
                                            AppColors.grayColor, 16.sp),
                                      )
                                    : Text(
                                        "(Active)",
                                        style: AppFontStyle.semiboldTextStyle(
                                            AppColors.greenColor, 16.sp),
                                      ),
                              ],
                            ),
                            Switch(
                              thumbColor: const MaterialStatePropertyAll<Color>(
                                  AppColors.white),
                              activeColor: AppColors.greenColor,
                              value: activated,
                              onChanged: (bool value) {
                                setState(() {
                                  activated = value;
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        ProfileImage(),
                        SizedBox(
                          height: 12.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8, vertical: 12.h),
                          child: TextFormField(
                            style: AppFontStyle.mediumTextStyle(
                                AppColors.textColor, 14.sp),
                            autofocus: true,
                            readOnly: true,
                            decoration: InputDecoration(
                              hintText: 'Roman',
                              hintStyle: const TextStyle(color: Colors.grey),
                              filled: true,
                              fillColor: Colors.white,
                              label: Text(
                                "First Name",
                                style: AppFontStyle.lightTextStyle(
                                    AppColors.textColor, 12.sp),
                              ),
                              labelStyle: AppFontStyle.regularTextStyle(
                                  AppColors.textColor, 12.sp),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 19.w),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(
                                    width: 1, color: AppColors.disableColor),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(
                                    width: 1, color: AppColors.disableColor),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(
                                  color: AppColors.disableColor,
                                  width: 1.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8, vertical: 12.h),
                          child: TextFormField(
                            style: AppFontStyle.mediumTextStyle(
                                AppColors.textColor, 14.sp),
                            readOnly: true,
                            autofocus: true,
                            decoration: InputDecoration(
                              hintText: 'Sam',
                              hintStyle: const TextStyle(color: Colors.grey),
                              filled: true,
                              fillColor: Colors.white,
                              label: Text(
                                "Last Name",
                                style: AppFontStyle.lightTextStyle(
                                    AppColors.textColor, 12.sp),
                              ),
                              labelStyle: AppFontStyle.regularTextStyle(
                                  AppColors.textColor, 12.sp),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 19.w),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(
                                    width: 1, color: AppColors.disableColor),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(
                                    width: 1, color: AppColors.disableColor),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(
                                  color: AppColors.disableColor,
                                  width: 1.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8, vertical: 12.h),
                          child: TextFormField(
                            style: AppFontStyle.mediumTextStyle(
                                AppColors.textColor, 14.sp),
                            readOnly: true,
                            autofocus: true,
                            decoration: InputDecoration(
                              hintText: 'Role Name',
                              hintStyle: const TextStyle(color: Colors.grey),
                              filled: true,
                              fillColor: Colors.white,
                              label: Text(
                                "Assign Role",
                                style: AppFontStyle.lightTextStyle(
                                    AppColors.textColor, 12.sp),
                              ),
                              labelStyle: AppFontStyle.regularTextStyle(
                                  AppColors.textColor, 12.sp),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 19.w),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(
                                    width: 1, color: AppColors.disableColor),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(
                                    width: 1, color: AppColors.disableColor),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(
                                  color: AppColors.disableColor,
                                  width: 1.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8, vertical: 12.h),
                          child: TextFormField(
                            style: AppFontStyle.mediumTextStyle(
                                AppColors.textColor, 14.sp),
                            readOnly: true,
                            autofocus: true,
                            decoration: InputDecoration(
                              hintText: 'Male',
                              hintStyle: const TextStyle(color: Colors.grey),
                              filled: true,
                              fillColor: Colors.white,
                              label: Text(
                                "Gender",
                                style: AppFontStyle.lightTextStyle(
                                    AppColors.textColor, 12.sp),
                              ),
                              labelStyle: AppFontStyle.regularTextStyle(
                                  AppColors.textColor, 12.sp),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 19.w),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(
                                    width: 1, color: AppColors.disableColor),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(
                                    width: 1, color: AppColors.disableColor),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(
                                  color: AppColors.disableColor,
                                  width: 1.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8, vertical: 12.h),
                          child: TextFormField(
                            style: AppFontStyle.mediumTextStyle(
                                AppColors.textColor, 14.sp),
                            readOnly: true,
                            autofocus: true,
                            decoration: InputDecoration(
                              hintText: '10-10-1996',
                              hintStyle: const TextStyle(color: Colors.grey),
                              filled: true,
                              fillColor: Colors.white,
                              label: Text(
                                "Date of Birth",
                                style: AppFontStyle.lightTextStyle(
                                    AppColors.textColor, 12.sp),
                              ),
                              labelStyle: AppFontStyle.regularTextStyle(
                                  AppColors.textColor, 12.sp),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 19.w),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(
                                    width: 1, color: AppColors.disableColor),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(
                                    width: 1, color: AppColors.disableColor),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(
                                  color: AppColors.disableColor,
                                  width: 1.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8, vertical: 12.h),
                          child: TextFormField(
                            style: AppFontStyle.mediumTextStyle(
                                AppColors.textColor, 14.sp),
                            readOnly: true,
                            autofocus: true,
                            decoration: InputDecoration(
                              hintText: 'Harry77@gmail.com',
                              hintStyle: const TextStyle(color: Colors.grey),
                              filled: true,
                              fillColor: Colors.white,
                              label: Text(
                                "Email",
                                style: AppFontStyle.lightTextStyle(
                                    AppColors.textColor, 12.sp),
                              ),
                              labelStyle: AppFontStyle.regularTextStyle(
                                  AppColors.textColor, 12.sp),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 19.w),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(
                                    width: 1, color: AppColors.disableColor),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(
                                    width: 1, color: AppColors.disableColor),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(
                                  color: AppColors.disableColor,
                                  width: 1.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8, vertical: 12.h),
                          child: TextFormField(
                            style: AppFontStyle.mediumTextStyle(
                                AppColors.textColor, 14.sp),
                            readOnly: true,
                            autofocus: true,
                            decoration: InputDecoration(
                              hintText: '+911231231231',
                              hintStyle: const TextStyle(color: Colors.grey),
                              filled: true,
                              fillColor: Colors.white,
                              label: Text(
                                "Mobile Number",
                                style: AppFontStyle.lightTextStyle(
                                    AppColors.textColor, 12.sp),
                              ),
                              labelStyle: AppFontStyle.regularTextStyle(
                                  AppColors.textColor, 12.sp),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 19.w),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(
                                    width: 1, color: AppColors.disableColor),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(
                                    width: 1, color: AppColors.disableColor),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(
                                  color: AppColors.disableColor,
                                  width: 1.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8, vertical: 12.h),
                          child: TextFormField(
                            style: AppFontStyle.mediumTextStyle(
                                AppColors.textColor, 14.sp),
                            readOnly: true,
                            autofocus: true,
                            obscureText: pCTRL.isHidden1.value,
                            decoration: InputDecoration(
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
                              hintText: '********',
                              hintStyle: const TextStyle(color: Colors.grey),
                              filled: true,
                              fillColor: Colors.white,
                              label: Text(
                                "Password",
                                style: AppFontStyle.lightTextStyle(
                                    AppColors.textColor, 12.sp),
                              ),
                              labelStyle: AppFontStyle.regularTextStyle(
                                  AppColors.textColor, 12.sp),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 19.w),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(
                                    width: 1, color: AppColors.disableColor),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(
                                    width: 1, color: AppColors.disableColor),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(
                                  color: AppColors.disableColor,
                                  width: 1.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8, vertical: 12.h),
                          child: TextFormField(
                            style: AppFontStyle.mediumTextStyle(
                                AppColors.textColor, 14.sp),
                            readOnly: true,
                            autofocus: true,
                            obscureText: pCTRL.isHidden2.value,
                            decoration: InputDecoration(
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
                              hintText: '********',
                              hintStyle: const TextStyle(color: Colors.grey),
                              filled: true,
                              fillColor: Colors.white,
                              label: Text(
                                "Confirm Password",
                                style: AppFontStyle.lightTextStyle(
                                    AppColors.textColor, 12.sp),
                              ),
                              labelStyle: AppFontStyle.regularTextStyle(
                                  AppColors.textColor, 12.sp),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 19.w),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(
                                    width: 1, color: AppColors.disableColor),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(
                                    width: 1, color: AppColors.disableColor),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(
                                  color: AppColors.disableColor,
                                  width: 1.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Column(
              children: [
                Container(
                  width: Get.width - 32.w,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: AppButton(
                        onTaps: () {
                          Get.toNamed('/edit_staff');
                        },
                        backgoundColor: AppColors.primaryColor,
                        textColor: AppColors.white,
                        titleText: "Edit"),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  width: Get.width - 32.w,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: AppButton(
                      onTaps: () {
                        
                      },
                      backgoundColor: AppColors.white,
                      textColor: AppColors.primaryColor,
                      titleText: 'Delete Staff',
                      borderColor: AppColors.primaryColor,
                      isIcon: false,
                    ),
                  ),
                ),
                SizedBox(
                  height: 38.h,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CircleAvatar(
        backgroundColor: AppColors.lightPrimaryColor,
        radius: 36.r,
        child: CircleAvatar(
          radius: 35.r,
          backgroundColor: AppColors.white,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(35.r),
            child: Image.asset(
              'assets/user.png',
              width: 70.w,
              height: 70.h,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    ]);
  }
}
