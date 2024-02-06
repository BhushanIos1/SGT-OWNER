// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/feature/Property/property_creation/controller/property_creation_controller.dart';
import 'package:sgt_owner/feature/Property/property_creation/views/subscreen/address_tab.dart';
import 'package:sgt_owner/feature/Property/property_creation/views/subscreen/emergency_contact_tab.dart';
import 'package:sgt_owner/feature/Property/property_creation/views/subscreen/property_detail_tab.dart';
import 'package:sgt_owner/feature/authentication/signup/controller/image_picker_controller.dart';
import 'package:sgt_owner/feature/authentication/signup/controller/signup_controller.dart';
import 'package:sgt_owner/shared/widgets/custom_appbar.dart';
import 'package:sgt_owner/shared/widgets/custom_buttons.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class PropertyCreationPage extends StatefulWidget {
  const PropertyCreationPage({super.key});

  @override
  State<PropertyCreationPage> createState() => _PropertyCreationPageState();
}

class _PropertyCreationPageState extends State<PropertyCreationPage>
// with TickerProviderStateMixin
{
  bool hide = false;
  // NewConfirmController pCTRL = Get.put(NewConfirmController());
  final propertyCreationController = Get.put(PropertyCreationController());
  ImagePickerController imgController = Get.put(ImagePickerController());

  // late TabController _tabController;
  @override
  void dispose() {
    super.dispose();
    // _tabController.dispose();
  }

  // final _fNameFocus = FocusNode();

  @override
  void initState() {
    super.initState();

    // _tabController = TabController(
    //   initialIndex: 0,
    //   length: 3,
    //   vsync: this,
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CustomAppBar(
        titleText: 'Property Creation',
        isLeading: true,
      ),
      body: Obx(
        () => Stepper(
          type: StepperType.horizontal,
          steps: buildStep(),
          currentStep: propertyCreationController.currentStep.value,
          onStepTapped: (index) {
            propertyCreationController.currentStep.value = index;
          },
          controlsBuilder: (context, ControlsDetails dtl) {
            return Column(
              children: [
                // Obx(() =>
                AppButton(
                    onTaps: () {
                      if (propertyCreationController.currentStep.value ==
                          buildStep().length - 1) {
                        print("Step Over !!!!!!");
                        Get.toNamed('/create_shift');
                      } else {
                        propertyCreationController.currentStep.value++;
                      }
                      //  dtl.onStepContinue;
                      // propertyDetailController.checkLogin();
                    },
                    backgoundColor:
                        //propertyDetailController.btnEnabled.value &&
                        //         (propertyDetailController.passwordController1.text ==
                        //             propertyDetailController.passwordController2.text) &&
                        //         propertyDetailController.termsChecked.value
                        //     ?
                        AppColors.primaryColor,
                    // :
                    // AppColors.disableColor,
                    textColor: AppColors.white,
                    titleText: propertyCreationController.currentStep.value ==
                            buildStep().length - 1
                        ? "Save & Next"
                        : "Next"),
                propertyCreationController.currentStep.value ==
                        buildStep().length - 1
                    ? Column(
                        children: [
                          SizedBox(
                            height: 24.h,
                          ),
                          Text(
                            'Save Property',
                            style: AppFontStyle.semiboldTextStyle(
                                AppColors.primaryColor, 16.sp),
                          ),
                        ],
                      )
                    : SizedBox(
                        height: 1.h,
                      ),
                // ),
                SizedBox(
                  height: 38.h,
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  List<Step> buildStep() {
    return [
      Step(
          title: Padding(
            padding: const EdgeInsets.only(right:10),
            child: Text(
              'Property',
              style:
                  AppFontStyle.semiboldTextStyle(AppColors.primaryColor, 12.sp),
            ),
          ),
          content: PropertyWidgetTab(),
          isActive: propertyCreationController.currentStep.value >= 0),
      Step(
          title: Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Text(
              'Address',
              style:
                  AppFontStyle.semiboldTextStyle(AppColors.primaryColor, 12.sp),
            ),
          ),
          content: AddressWidgetTab(),
          isActive: propertyCreationController.currentStep.value >= 1),
      Step(
          title: Text(
            'Emergency Contact',
            style:
                AppFontStyle.semiboldTextStyle(AppColors.primaryColor, 12.sp),
            softWrap: false,
          ),
          content: EmergencyContactWidgetTab(),
          isActive: propertyCreationController.currentStep.value >= 2),
    ];
  }
}
