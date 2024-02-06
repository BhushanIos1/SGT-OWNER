import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PropertyDetailController extends GetxController {
  final GlobalKey<FormState> propertyNameFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> propertyTypeFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> asstManagerFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> propertyAreaFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> propertyDescriptionFormKey = GlobalKey<FormState>();

  late TextEditingController fNameController,
      propertyNameController,
      propertyTypeController,
      asstManagerController,
      propertyAreaController,
      propertyDescriptionController;
  var propertyName = '';
  var propertyType='';
  var asstManager='';
  var propertyArea = '';
  var propertyDescription = '';

  // RxBool isFNameValid = false.obs;


  // RxBool btnEnabled = false.obs;

  @override
  void onInit() {
    super.onInit();
    propertyNameController = TextEditingController();
    // propertyTypeController = dropdownButton();
    propertyAreaController = TextEditingController();
    propertyDescriptionController = TextEditingController();
  }

  @override
  void onClose() {
    propertyNameController.dispose();
    propertyAreaController.dispose();
    propertyDescriptionController.dispose();
  }

  String? validatePropertyName(String value) {
    if (value == '' || value.isEmpty) {
      return "\u24D8  Please Enter Property Name";
    }
    return null;
  }

  String? validatePropertyArea(String value) {
    if (value == '' || value.isEmpty) {
      return "\u24D8  Required";
    }
    return null;
  }

  String? validatePropertyType(value) {
    if(value == '' || value.isEmpty) {
      return "\u24D8 Required";
    }
    return null;
  }

  String? validatePropertyDescription(String value) {
    if (value == '' || value.isEmpty) {
      return "\u24D8  Required";
    }
    return null;
  }

  //     return "\u24D8  Enter valid Email Id";
  //   }
  //   Future.delayed(Duration.zero, () {
  //     isEmailValid.value = true;
  //   });

  //   return null;
  // }

  // String? validateNumber(String value) {
  //   if (!GetUtils.isPhoneNumber(value)) {
  //     return "\u24D8  Enter valid Phone Number";
  //   }
  //   return null;
  // }

  // String? validatePassword(String value) {
  //   if (value == '' || value.isEmpty) {
  //     Future.delayed(Duration.zero, () {
  //       btnEnabled.value = false;
  //     });
  //     return "\u24D8  Password is required";
  //   }
  //   if (value.length < 8) {
  //     Future.delayed(Duration.zero, () {
  //       btnEnabled.value = false;
  //     });
  //     return "\u24D8  Password must be at least 8 characters long";
  //   }
  //   if (!value.contains(RegExp(r'[A-Z]'))) {
  //     Future.delayed(Duration.zero, () {
  //       btnEnabled.value = false;
  //     });
  //     return "\u24D8  Password must contain at least one uppercase letter";
  //   }
  //   if (!value.contains(RegExp(r'[a-z]'))) {
  //     Future.delayed(Duration.zero, () {
  //       btnEnabled.value = false;
  //     });
  //     return "\u24D8  Password must contain at least one lowercase letter";
  //   }
  //   if (!value.contains(RegExp(r'[0-9]'))) {
  //     Future.delayed(Duration.zero, () {
  //       btnEnabled.value = false;
  //     });
  //     return "\u24D8  Password must contain at least one numeric character";
  //   }
  //   if (!value.contains(RegExp(r'[!@#\$%^&*()<>?/|}{~:]'))) {
  //     Future.delayed(Duration.zero, () {
  //       btnEnabled.value = false;
  //     });
  //     return "\u24D8  Password must contain at least one special character";
  //   }
  //   Future.delayed(Duration.zero, () {
  //     btnEnabled.value = true;
  //   });
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