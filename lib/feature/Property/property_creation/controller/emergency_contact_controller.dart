import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmergencyContactController extends GetxController {
  final GlobalKey<FormState> nameFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> phoneFormKey = GlobalKey<FormState>();
  

  late TextEditingController
      nameController,
      phoneController;
  var name = '';
  var phone='';

  RxBool isNameValid = false.obs;
  RxBool isNumberValid = false.obs;


  // RxBool btnEnabled = false.obs;

  @override
  void onInit() {
    super.onInit();
    nameController = TextEditingController();
    phoneController = TextEditingController();
  }

  @override
  void onClose() {
    nameController.dispose();
    phoneController.dispose();
  }

  String? validateName(String value) {
    if (value == '' || value.isEmpty) {
      return "\u24D8  Please Enter Property Name";
    }
    return null;
  }

  String? validateNumber(String value) {
    if (!GetUtils.isPhoneNumber(value)) {
      return "\u24D8  Enter valid Phone Number";
    }
    return null;
  }


  void checkLogin() {
    isNameValid.value = nameFormKey.currentState!.validate();
    if (!isNameValid.value) {
      return;
    } else {
      nameFormKey.currentState!.save();
    }

   isNumberValid.value = phoneFormKey.currentState!.validate();
    if (!isNumberValid.value) {
      return;
    } else {
      phoneFormKey.currentState!.save();
    }

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
