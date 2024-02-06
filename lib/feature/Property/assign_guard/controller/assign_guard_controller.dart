import 'package:get/get.dart';
import 'package:flutter/material.dart';


class AssignGuardController extends GetxController{

  final GlobalKey<FormState> routeListFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> inputDateFormKey = GlobalKey<FormState>();
  // final GlobalKey<FormState> longitudeFormKey = GlobalKey<FormState>();
  // final GlobalKey<FormState> taskFormKey = GlobalKey<FormState>();

  late TextEditingController
      guardListController,
      dateInputController;
      // shiftController;

  var guardList = '';
  var dateInput = '';

  // RxBool isCheckpointNameValid = false.obs;


  // RxBool btnEnabled = false.obs;

  @override
  void onInit() {
    super.onInit();
    guardListController = TextEditingController();
    dateInputController = TextEditingController();
    // shiftController = TextEditingController();
  }

  @override
  void onClose() {
    guardListController.dispose();
    dateInputController.dispose();
  }


  String? validateRouteList(value) {
    if (value == '' || value.isEmpty) {
      return "\u24D8  select shift ";
    }
    return null;
  }

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