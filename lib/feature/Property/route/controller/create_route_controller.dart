import 'package:get/get.dart';
import 'package:flutter/material.dart';


class CreateRouteController extends GetxController{
  var currentStep = 0.obs;

  final GlobalKey<FormState> routeNameFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> shiftListFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> checkPointListFormKey = GlobalKey<FormState>();
  // final GlobalKey<FormState> longitudeFormKey = GlobalKey<FormState>();
  // final GlobalKey<FormState> taskFormKey = GlobalKey<FormState>();

  late TextEditingController
      routeNameController,
      shiftController,
      selectedShiftController,
      checkPointTimeController;
      // checkpointDescriptionController,
      // latitudeController,
      // longitudeController,
      // commentController,
      // taskController,

  var routeName = '';
  var shift ='';
  // var checkpointDescription='';
  // var latitude='';
  // var longitude='';
  // var task='';
  // var comment='';

  // RxBool isCheckpointNameValid = false.obs;


  // RxBool btnEnabled = false.obs;

  @override
  void onInit() {
    super.onInit();
    routeNameController = TextEditingController();
    shiftController = TextEditingController();
    selectedShiftController = TextEditingController();
    checkPointTimeController = TextEditingController();
    // latitudeController = TextEditingController();
    // longitudeController = TextEditingController();
    // taskController = TextEditingController();
    // commentController=TextEditingController();
  }

  @override
  void onClose() {
    routeNameController.dispose();
    shiftController.dispose();
    selectedShiftController.dispose();
    checkPointTimeController.dispose();
    // latitudeController.dispose();
    // longitudeController.dispose();
    // taskController.dispose();
    // commentController.dispose();
  }

  String? validateRouteName(String value) {
    if (value == '' || value.isEmpty) {
      return "\u24D8  Please Enter Route Name";
    }
    return null;
  }

  String? validateShift(value) {
    if (value == '' || value.isEmpty) {
      return "\u24D8  select shift ";
    }
    return null;
  }

  // String? validateLatitude(String value) {
  //   if (value == '' || value.isEmpty) {
  //     return "\u24D8 Required";
  //   }
  //   return null;
  // }

  // String? validateLongitude(String value) {
  //   if (value == '' || value.isEmpty) {
  //     return "\u24D8  Required";
  //   }
  //   return null;
  // }

  // String? validateTask(String value) {
  //   if (value == '' || value.isEmpty) {
  //     return "\u24D8  Required";
  //   }
  //   return null;
  // }

 



  void checkLogin() {
    // isFNameValid.value = fNameFormKey.currentState!.validate();
    // if (!isFNameValid.value) {
    //   return;
    // } else {
    //   fNameFormKey.currentState!.save();
    // }
    // isLNameValid.value = lNameFormKey.currentState!.validate();
    // if (!isLNameValid.value) {
    //   return;
    // } else {
    //   lNameFormKey.currentState!.save();
    // }
    // isEmailValid.value = emailFormKey.currentState!.validate();
    // if (!isEmailValid.value) {
    //   return;
    // } else {
    //   emailFormKey.currentState!.save();
    // }
    // isNumberValid.value = phoneFormKey.currentState!.validate();
    // if (!isNumberValid.value) {
    //   return;
    // } else {
    //   phoneFormKey.currentState!.save();
    // }

    // isPasswordValid1.value = passFormKey1.currentState!.validate();
    // if (!isPasswordValid1.value) {
    //   return;
    // } else {
    //   passFormKey1.currentState!.save();
    // }

    // isPasswordValid2.value = passFormKey2.currentState!.validate();
    // if (!isPasswordValid2.value) {
    //   return;
    // } else {
    //   Get.toNamed("/email_verification",

    //           parameters: {"email": emailController.text,"signUp":'signUpSuccessful'})!
    //       .then((value) {
    //     fNameController.clear();
    //     lNameController.clear();
    //     emailController.clear();
    //     phoneController.clear();
    //     passwordController1.clear();
    //     passwordController2.clear();
    //   });
    //   passFormKey2.currentState!.save();
    // }
  }
}