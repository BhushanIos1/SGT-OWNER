// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sgt_owner/feature/Property/checkpoint/controller/checkpoint_imagepicker_controller.dart';
import 'package:sgt_owner/feature/Property/checkpoint/controller/create_checkpoint_controller.dart';
import 'package:sgt_owner/feature/Property/property_view_carousal.dart';
import 'package:sgt_owner/shared/widgets/custom_appbar.dart';
import 'package:sgt_owner/shared/widgets/custom_bottomsheet.dart';
import 'package:sgt_owner/shared/widgets/custom_buttons.dart';
import 'package:sgt_owner/shared/widgets/custom_progressbar.dart';
import 'package:sgt_owner/shared/widgets/custom_textfield.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class CreateCheckPointPage extends StatefulWidget {
  const CreateCheckPointPage({super.key});

  @override
  State<CreateCheckPointPage> createState() => _CreateCheckPointPageState();
}

class _CreateCheckPointPageState extends State<CreateCheckPointPage> {
  bool hide = false;
  final createCheckpointController = Get.put(CreateCheckpointController());
  CheckpointImagePickerController imgController =
      Get.put(CheckpointImagePickerController());
  // late TabController _tabController;
  @override
  void dispose() {
    super.dispose();
    // _tabController.dispose();
  }

  final _checkpointNameFocus = FocusNode();
  final _checkpointDescriptionFocus = FocusNode();
  final _latitudeFocus = FocusNode();
  final _longitudeFocus = FocusNode();
  final _taskFocus = FocusNode();
  final _commentFocus = FocusNode();
  final _generateQrCodeFocus = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: CustomAppBar(
          titleText: 'Create Checkpoint',
          isLeading: true,
        ),
        body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(children: [
              SizedBox(height: 16.h,),
              MyProgressPage(currentStep: 1),
              SizedBox(height: 16.h,),
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
                        Divider(
                          color: AppColors.secondaryColor,
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Text(
                          'Checkpoint Details',
                          style: AppFontStyle.semiboldTextStyle(
                              AppColors.textColor, 16.sp),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Form(
                          key: createCheckpointController.checkpointNameFormKey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: SignUpTextField(
                            controller: createCheckpointController
                                .checkpointNameController,
                            label: RichText(
                                text: TextSpan(
                                    text: 'Checkpoint Name',
                                    style: AppFontStyle.lightTextStyle(
                                        AppColors.black, 14.sp),
                                    children: const [
                                  TextSpan(
                                      text: ' *',
                                      style: TextStyle(
                                        color: Colors.red,
                                      ))
                                ])),
                            maxWords: 25,
                            hintText: "Enter Checkpoint Name",
                            keyboardType: TextInputType.text,
                            focusNode: _checkpointNameFocus,
                            onSaved: (value) {
                              createCheckpointController.checkpointName =
                                  value!;
                            },
                            validator: (value) {
                              return createCheckpointController
                                  .validateCheckpointName(value!);
                            },
                            onTapOutside: (event) {
                              FocusScope.of(context).unfocus();
                            },
                            onFieldSubmitted: (value) {
                              FocusScope.of(context)
                                  .requestFocus(_checkpointDescriptionFocus);
                            },
                          ),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Form(
                          key: createCheckpointController
                              .checkpointDescriptionFormKey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: SignUpTextField(
                            controller: createCheckpointController
                                .checkpointDescriptionController,
                            label: RichText(
                                text: TextSpan(
                                    text: 'Checkpoint Description',
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
                            maxLines: 5,
                            hintText: "Write Description here...",
                            keyboardType: TextInputType.text,
                            focusNode: _checkpointDescriptionFocus,
                            onSaved: (value) {
                              createCheckpointController.checkpointDescription =
                                  value!;
                            },
                            validator: (value) {
                              return createCheckpointController
                                  .validateCheckpointDescription(value!);
                            },
                            onTapOutside: (event) {
                              FocusScope.of(context).unfocus();
                            },
                            onFieldSubmitted: (value) {
                              FocusScope.of(context)
                                  .requestFocus(_latitudeFocus);
                            },
                          ),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        AddCheckpointImage(imgController: imgController),
                        SizedBox(
                          height: 12.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                                text: TextSpan(
                                    text: 'Add Checkpoint\n Lat & Long',
                                    style: AppFontStyle.semiboldTextStyle(
                                        AppColors.black, 16.sp),
                                    children: const [
                                  TextSpan(
                                      text: ' *',
                                      style: TextStyle(
                                        color: Colors.red,
                                      ))
                                ])),
                            GestureDetector(
                              onTap: () => {},
                              child: Row(
                                children: [
                                  Text(
                                    'Auto Detect',
                                    style: AppFontStyle.mediumTextStyle(
                                        AppColors.primaryColor, 12.sp),
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Icon(
                                    Icons.my_location,
                                    color: AppColors.primaryColor,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Form(
                          key: createCheckpointController.latitudeFormKey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: AppTextField(
                            controller:
                                createCheckpointController.latitudeController,
                            label: RichText(
                                text: TextSpan(
                                    text: 'Latitude',
                                    style: AppFontStyle.lightTextStyle(
                                        AppColors.black, 14.sp),
                                    children: [
                                  TextSpan(
                                      text: ' *',
                                      style: TextStyle(
                                        color: Colors.red,
                                      ))
                                ])),
                            hintText: "Enter Latitude",
                            keyboardType: TextInputType.number,
                            focusNode: _latitudeFocus,
                            onSaved: (value) {
                              createCheckpointController.latitude = value!;
                            },
                            validator: (value) {
                              return createCheckpointController
                                  .validateLatitude(value!);
                            },
                            onFieldSubmitted: (value) {
                              FocusScope.of(context)
                                  .requestFocus(_longitudeFocus);
                            },
                            onTapOutside: (event) {
                              FocusScope.of(context).unfocus();
                            },
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Form(
                          key: createCheckpointController.longitudeFormKey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: AppTextField(
                            controller:
                                createCheckpointController.longitudeController,
                            label: RichText(
                                text: TextSpan(
                                    text: 'Longitude',
                                    style: AppFontStyle.lightTextStyle(
                                        AppColors.black, 14.sp),
                                    children: [
                                  TextSpan(
                                      text: ' *',
                                      style: TextStyle(
                                        color: Colors.red,
                                      ))
                                ])),
                            hintText: "Enter Longitude",
                            keyboardType: TextInputType.number,
                            focusNode: _longitudeFocus,
                            onSaved: (value) {
                              createCheckpointController.longitude = value!;
                            },
                            validator: (value) {
                              return createCheckpointController
                                  .validateLongitude(value!);
                            },
                            onFieldSubmitted: (value) {
                              FocusScope.of(context)
                                  .requestFocus(_longitudeFocus);
                            },
                            onTapOutside: (event) {
                              FocusScope.of(context).unfocus();
                            },
                          ),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Text(
                          'Tasks for this checkpoint',
                          style: AppFontStyle.semiboldTextStyle(
                              AppColors.textColor, 16.sp),
                        ),
                        Text(
                          'Minimum 1 and Maximum 15 Task can be added in a single checkpoint.',
                          maxLines: 2,
                          style: AppFontStyle.lightTextStyle(
                              AppColors.secondaryColor, 12.sp),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Form(
                          key: createCheckpointController.taskFormKey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: AppTextField(
                            controller:
                                createCheckpointController.taskController,
                            label: RichText(
                                text: TextSpan(
                              text: 'Task 1',
                              style: AppFontStyle.lightTextStyle(
                                  AppColors.black, 14.sp),
                            )),
                            hintText: "Add task",
                            keyboardType: TextInputType.text,
                            focusNode: _taskFocus,
                            onSaved: (value) {
                              createCheckpointController.task = value!;
                            },
                            validator: (value) {
                              return createCheckpointController
                                  .validateTask(value!);
                            },
                            onFieldSubmitted: (value) {
                              FocusScope.of(context).unfocus();
                            },
                            onTapOutside: (event) {
                              FocusScope.of(context).unfocus();
                            },
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
                            titleText: "+ Add More Task"),
                        SizedBox(
                          height: 16.h,
                        ),
                        Text(
                          'Generate QR code',
                          style: AppFontStyle.semiboldTextStyle(
                              AppColors.textColor, 16.sp),
                        ),
                        Text(
                          'Note: A QR Code will only be generated after filling the mandatory fields & this Description will show below QR code.',
                          maxLines: 2,
                          style: AppFontStyle.lightTextStyle(
                              AppColors.secondaryColor, 12.sp),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Container(
                          width: Get.width - 32.w,
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.disableColor),
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(10.r, 10.r))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SignUpTextField(
                                controller: createCheckpointController
                                    .commentController,
                                label: RichText(
                                    text: TextSpan(
                                  text: 'Comment',
                                  style: AppFontStyle.lightTextStyle(
                                      AppColors.black, 14.sp),
                                )),
                                maxWords: 64,
                                maxLines: 5,
                                hintText: "Add your comment...",
                                keyboardType: TextInputType.text,
                                focusNode: _commentFocus,
                                onSaved: (value) {
                                  createCheckpointController.comment = value!;
                                },
                                // validator: (value) {
                                //   return createCheckpointController
                                //       .validateComment(value!);
                                // },
                                onTapOutside: (event) {
                                  FocusScope.of(context).unfocus();
                                },
                                onFieldSubmitted: (value) {
                                  FocusScope.of(context)
                                      .requestFocus(_generateQrCodeFocus);
                                },
                              ),
                              DottedBorder(
                                  color: AppColors.disableColor,
                                  child: Container(
                                    width: Get.width - 32.w,
                                    child: TextButton(
                                      focusNode: _generateQrCodeFocus,
                                      child: Text(
                                        'Generate QR code',
                                        style: AppFontStyle.regularTextStyle(
                                            AppColors.secondaryColor, 14.sp),
                                      ),
                                      onPressed: () => {},
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              AppButton(
                  onTaps: () {
                    createCheckpointController.checkLogin();
                  },
                  backgoundColor:
                      // createCheckpointController.btnEnabled.value
                      //     ? AppColors.primaryColor
                      //     :
                      AppColors.disableColor,
                  textColor: AppColors.white,
                  titleText: "+ Save & Create Another Checkpoint"),
              SizedBox(
                height: 12.h,
              ),
              AppButton(
                  onTaps: () {
                    // createCheckpointController.checkLogin();
                    Get.toNamed("/create_route");
                  },
                  backgoundColor:
                      // createCheckpointController.btnEnabled.value
                      //     ? 
                      AppColors.primaryColor,
                      //     :
                      // AppColors.disableColor,
                  textColor: AppColors.white,
                  titleText: "Save & Next"),
              SizedBox(
                height: 45.h,
              ),
            ])));
  }
}

class AddCheckpointImage extends StatelessWidget {
  const AddCheckpointImage({
    super.key,
    required this.imgController,
  });

  final CheckpointImagePickerController imgController;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Obx(() => Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'CheckPoint Image',
                    style: AppFontStyle.semiboldTextStyle(
                        AppColors.textColor, 16.sp),
                  ),
                  Text(
                    ' (Optional) ',
                    style:
                        AppFontStyle.lightTextStyle(AppColors.grayColor, 10.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              Center(
                child: Container(
                  width: Get.width - 32.w,
                  height: 113.h,
                  child: imgController.selectedImagePath.value == ""
                      ? GestureDetector(
                          onTap: () {
                            showImagePicker(context);
                          },
                          child: DottedBorder(
                            radius: Radius.circular(10.r),
                            color: AppColors.secondaryColor,
                            strokeWidth: 1.w,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.upload,
                                    color: AppColors.primaryColor,
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Text(
                                    'Browse Image',
                                    style: AppFontStyle.regularTextStyle(
                                        AppColors.primaryColor, 12.sp),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      : Image.file(
                          File(imgController.selectedImagePath.value),
                          fit: BoxFit.fill,
                          width: 343.w,
                          height: 178.h,
                        ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                'Maximum 10 images of property can be uploaded, maximum size of image should be 2 MB and in JPG or PNG format.',
                maxLines: 2,
                style: AppFontStyle.lightTextStyle(
                    AppColors.secondaryColor, 12.sp),
              ),
            ],
          )),
    ]);
  }

  void showImagePicker(BuildContext context) {
    showModalBottomSheet<int>(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return AppBottomSheet(
          child: Container(
            color: AppColors.white,
            child: Column(children: [
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                  imgController.getImage(ImageSource.camera);
                },
                child: Center(
                  child: Container(
                    padding: EdgeInsets.only(top: 15.h, bottom: 16.h),
                    height: 48.h,
                    width: Get.width - 80,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: AppColors.grayColor,
                          width: 1,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Take Photo',
                          style: AppFontStyle.regularTextStyle(
                              AppColors.textColor, 14.sp),
                        ),
                        Icon(
                          Entypo.camera,
                          color: AppColors.primaryColor,
                          size: 22,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                  imgController.getImage(ImageSource.gallery);
                },
                child: Center(
                  child: Container(
                    padding: EdgeInsets.only(top: 15.h, bottom: 16.h),
                    height: 48.h,
                    width: Get.width - 80,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: AppColors.grayColor,
                          width: 1,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Choose Photo',
                          style: AppFontStyle.regularTextStyle(
                              AppColors.textColor, 14.sp),
                        ),
                        Icon(
                          FontAwesome5.images,
                          color: AppColors.primaryColor,
                          size: 22,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              if (imgController.selectedImagePath.value != "")
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                    Get.dialog(
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 32),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5.r),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Material(
                                  child: Column(
                                    children: [
                                      Text(
                                        "Are you sure you want to delete this profile picture ?",
                                        textAlign: TextAlign.center,
                                        style: AppFontStyle.mediumTextStyle(
                                            AppColors.textColor, 14.sp),
                                      ),
                                      SizedBox(height: 20.h),
                                      //Buttons
                                      Row(
                                        children: [
                                          Expanded(
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  minimumSize: Size(0, 35.h),
                                                  backgroundColor:
                                                      AppColors.white,
                                                  foregroundColor:
                                                      AppColors.primaryColor,
                                                  textStyle: AppFontStyle
                                                      .semiboldTextStyle(
                                                          AppColors
                                                              .primaryColor,
                                                          16.sp),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6.r),
                                                    side: BorderSide(
                                                      color: AppColors
                                                          .primaryColor,
                                                      width: 1.0,
                                                    ),
                                                  )),
                                              onPressed: () {
                                                imgController.selectedImagePath
                                                    .value = "";
                                                Get.back();
                                              },
                                              child: Text(
                                                'Delete',
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10.w),
                                          Expanded(
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                minimumSize: Size(0, 35.h),
                                                backgroundColor:
                                                    AppColors.primaryColor,
                                                textStyle: AppFontStyle
                                                    .semiboldTextStyle(
                                                        AppColors.white, 16.sp),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6.r),
                                                ),
                                              ),
                                              onPressed: () {
                                                Get.back();
                                              },
                                              child: const Text(
                                                'Cancel',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.only(top: 15.h, bottom: 16.h),
                      height: 48.h,
                      width: Get.width - 80,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: AppColors.grayColor,
                            width: 1,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Delete Photo',
                            style: AppFontStyle.regularTextStyle(
                                AppColors.textColor, 14.sp),
                          ),
                          Icon(
                            Icons.delete_outline,
                            color: AppColors.primaryColor,
                            size: 26,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: 15.h, bottom: 16.h),
                  height: 48.h,
                  width: Get.width - 80,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: AppColors.grayColor,
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        );
      },
    );
  }
}
