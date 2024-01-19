// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/feature/Property/property_view_carousal.dart';
import 'package:sgt_owner/feature/Property/shift/controller/shift_controller.dart';
import 'package:sgt_owner/feature/Property/shift/views/custom_stepper.dart';
import 'package:sgt_owner/shared/widgets/custom_appbar.dart';
import 'package:sgt_owner/shared/widgets/custom_buttons.dart';
import 'package:sgt_owner/shared/widgets/custom_textfield.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class CreateShiftPage extends StatefulWidget {
  const CreateShiftPage({super.key});

  @override
  State<CreateShiftPage> createState() => _CreateShiftPageState();
}

class _CreateShiftPageState extends State<CreateShiftPage> {
  bool hide = false;
  final createShiftController = Get.put(CreateShiftController());

  // late TabController _tabController;
  @override
  void dispose() {
    super.dispose();
    // _tabController.dispose();
  }

  final _shiftNameFocus = FocusNode();
  final _clockInTimeFocus = FocusNode();
  final _clockInDescriptionFocus = FocusNode();
  final _clockOutTimeFocus = FocusNode();
  final _clockOutDescriptionFocus = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: CustomAppBar(
          titleText: 'Create Shift',
          isLeading: true,
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              PropertyCarousal(),
              SizedBox(
                height: 12.h,
              ),
              Container(
                width: Get.width - 32.w,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(10.r, 10.r))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // CustomStepper(),
                        Text(
                          'Shift for Radission Blu Hotel',
                          style: AppFontStyle.semiboldTextStyle(
                              AppColors.textColor, 16.sp),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Form(
                          key: createShiftController.shiftNameFormKey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: SignUpTextField(
                            controller:
                                createShiftController.shiftNameController,
                            label: RichText(
                                text: TextSpan(
                                    text: 'Shift Name',
                                    style: AppFontStyle.lightTextStyle(
                                        AppColors.black, 14.sp),
                                    children: const [
                                  TextSpan(
                                      text: ' *',
                                      style: TextStyle(
                                        color: Colors.red,
                                      ))
                                ])),
                            maxWords: 64,
                            hintText: "Enter Shift Name",
                            keyboardType: TextInputType.text,
                            focusNode: _shiftNameFocus,
                            onSaved: (value) {
                              createShiftController.shiftName = value!;
                            },
                            validator: (value) {
                              return createShiftController
                                  .validateShiftName(value!);
                            },
                            onTapOutside: (event) {
                              FocusScope.of(context).unfocus();
                            },
                            onFieldSubmitted: (value) {
                              FocusScope.of(context)
                                  .requestFocus(_clockInDescriptionFocus);
                            },
                          ),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Clock-In Time',
                              style: AppFontStyle.lightTextStyle(
                                  AppColors.black, 12.sp),
                            ),
                            TextFormField(
                              controller:
                                  createShiftController.clockInTimeController,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Select Clock-In Time",
                                hintStyle: AppFontStyle.regularTextStyle(
                                    AppColors.hintColor, 14.sp),
                                suffixIcon: Padding(
                                  padding: const EdgeInsetsDirectional.only(
                                      end: 12.0),
                                  child: Icon(
                                    Icons.more_time_outlined,
                                    color: AppColors.secondaryColor,
                                  ), // myIcon is a 48px-wide widget.
                                ),
                                // errorText:
                                //     errorText != '' ? errorText : '\u24D8 $errorText',
                                // errorStyle: AppFontStyle.regularTextStyle(
                                //   AppColors.redColor,
                                //   10.sp,
                                // ),
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
                                    color: AppColors.primaryColor,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              readOnly:
                                  true, //set it true, so that user will not able to edit text
                              onTap: () async {
                                TimeOfDay? pickedTime = await showTimePicker(
                                  initialTime: TimeOfDay.now(),
                                  context: context,
                                  builder: (context, child) {
                                    return MediaQuery(
                                      data: MediaQuery.of(context).copyWith(
                                          alwaysUse24HourFormat: false),
                                      child: child ?? Container(),
                                    );
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Form(
                          key: createShiftController.clockInDescriptionFormKey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: SignUpTextField(
                            controller: createShiftController
                                .clockInDescriptionController,
                            label: RichText(
                                text: TextSpan(
                                    text: 'Clock-In Description',
                                    style: AppFontStyle.lightTextStyle(
                                        AppColors.black, 14.sp),
                                    children: const [
                                  TextSpan(
                                      text: ' *',
                                      style: TextStyle(
                                        color: Colors.red,
                                      ))
                                ])),
                            maxWords: 150,
                            maxLines: 3,
                            hintText: "Enter Clock-In description here...",
                            keyboardType: TextInputType.text,
                            focusNode: _clockInDescriptionFocus,
                            onSaved: (value) {
                              createShiftController.clockInDescription = value!;
                            },
                            validator: (value) {
                              return createShiftController
                                  .validateClockInDescription(value!);
                            },
                            onTapOutside: (event) {
                              FocusScope.of(context).unfocus();
                            },
                            onFieldSubmitted: (value) {
                              FocusScope.of(context)
                                  .requestFocus(_clockOutTimeFocus);
                            },
                          ),
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                        DottedBorder(
                            color: AppColors.disableColor,
                            child: Container(
                              width: Get.width - 32.w,
                              child: TextButton(
                                // focusNode: _generateQrCodeFocus,
                                child: Text(
                                  'Generate QR code',
                                  style: AppFontStyle.regularTextStyle(
                                      AppColors.secondaryColor, 14.sp),
                                ),
                                onPressed: () => {},
                              ),
                            )),
                        SizedBox(
                          height: 16.h,
                        ),
                        Divider(
                          color: AppColors.secondaryColor,
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Clock-Out Time',
                              style: AppFontStyle.lightTextStyle(
                                  AppColors.black, 12.sp),
                            ),
                            TextFormField(
                              controller:
                                  createShiftController.clockOutTimeController,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Select Clock-Out Time",
                                hintStyle: AppFontStyle.regularTextStyle(
                                    AppColors.hintColor, 14.sp),
                                suffixIcon: Padding(
                                  padding: const EdgeInsetsDirectional.only(
                                      end: 12.0),
                                  child: Icon(
                                    Icons.more_time_outlined,
                                    color: AppColors.secondaryColor,
                                  ), // myIcon is a 48px-wide widget.
                                ),
                                // errorText:
                                //     errorText != '' ? errorText : '\u24D8 $errorText',
                                // errorStyle: AppFontStyle.regularTextStyle(
                                //   AppColors.redColor,
                                //   10.sp,
                                // ),
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
                                    color: AppColors.primaryColor,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              readOnly:
                                  true, //set it true, so that user will not able to edit text
                              onTap: () async {
                                TimeOfDay? pickedTime = await showTimePicker(
                                  initialTime: TimeOfDay.now(),
                                  context: context,
                                  builder: (context, child) {
                                    return MediaQuery(
                                      data: MediaQuery.of(context).copyWith(
                                          alwaysUse24HourFormat: false),
                                      child: child ?? Container(),
                                    );
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Form(
                          key: createShiftController.clockOutDescriptionFormKey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: SignUpTextField(
                            controller: createShiftController
                                .clockOutDescriptionController,
                            label: RichText(
                                text: TextSpan(
                                    text: 'Clock-Out Description',
                                    style: AppFontStyle.lightTextStyle(
                                        AppColors.black, 14.sp),
                                    children: const [
                                  TextSpan(
                                      text: ' *',
                                      style: TextStyle(
                                        color: Colors.red,
                                      ))
                                ])),
                            maxWords: 150,
                            maxLines: 3,
                            hintText: "Enter Property description here...",
                            keyboardType: TextInputType.text,
                            focusNode: _clockOutDescriptionFocus,
                            onSaved: (value) {
                              createShiftController.clockOutDescription =
                                  value!;
                            },
                            validator: (value) {
                              return createShiftController
                                  .validateClockOutDescription(value!);
                            },
                            onTapOutside: (event) {
                              FocusScope.of(context).unfocus();
                            },
                            onFieldSubmitted: (value) {
                              FocusScope.of(context)
                                  .requestFocus(_shiftNameFocus);
                            },
                          ),
                        ),
                        SizedBox(
                          height: 9.h,
                        ),
                        AppButton(
                            onTaps: () {
                              // createShiftController.checkLogin();
                            },
                            backgoundColor:
                                //createShiftController.btnEnabled.value ?
                                AppColors.primaryColor,
                            // :
                            // AppColors.disableColor,
                            textColor: AppColors.white,
                            titleText: "Generate QR code"),
                        // DottedBorder(
                        //     color: AppColors.disableColor,
                        //     child: Container(
                        //       width: Get.width - 32.w,
                        //       child: TextButton(
                        //         // focusNode: _generateQrCodeFocus,
                        //         child: Text(
                        //           'Generate QR code',
                        //           style: AppFontStyle.regularTextStyle(
                        //               AppColors.secondaryColor, 14.sp),
                        //         ),
                        //         onPressed: () => {},
                        //       ),
                        //     )),
                        SizedBox(
                          height: 12.h,
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              AppButton(
                  onTaps: () {
                    // createShiftController.checkLogin();
                  },
                  backgoundColor:
                      //createShiftController.btnEnabled.value ?
                      AppColors.black,
                  // :
                  // AppColors.disableColor,
                  textColor: AppColors.white,
                  titleText: "+ Save & Create Another Shift"),
              SizedBox(
                height: 16.h,
              ),
              AppButton(
                  onTaps: () {
                    // createShiftController.checkLogin();
                  },
                  backgoundColor:
                      //createShiftController.btnEnabled.value ?
                      AppColors.primaryColor,
                  // :
                  // AppColors.disableColor,
                  textColor: AppColors.white,
                  titleText: "Save & Next"),
              SizedBox(
                height: 60.h,
              ),
            ],
          ),
        ));
  }
}
