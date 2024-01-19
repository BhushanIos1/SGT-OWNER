import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddressDetailController extends GetxController {
  final GlobalKey<FormState> streetAddressFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> postalCodeFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> selectCountryFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> selectStateFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> selectCityFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> latitudeFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> longitudeFormKey = GlobalKey<FormState>();

  late TextEditingController 
      streetAddressController,
      postalCodeController,
      latitudeController,
      longitudeController;

  var streetAddress='';
  var postalCode='';
  var latitude='';
  var longitude = '';

  // RxBool isFNameValid = false.obs;


  // RxBool btnEnabled = false.obs;

  @override
  void onInit() {
    super.onInit();
    streetAddressController = TextEditingController();
    postalCodeController = TextEditingController();
    latitudeController = TextEditingController();
    longitudeController = TextEditingController();
  }

  @override
  void onClose() {
    streetAddressController.dispose();
    postalCodeController.dispose();
    latitudeController.dispose();
    longitudeController.dispose();
  }

  String? validateStreetAddress(String value) {
    if (value == '' || value.isEmpty) {
      return "\u24D8  Please Enter Street Name";
    }
    return null;
  }

  String? validatePostalCode(String value) {
    if (value == '' || value.isEmpty) {
      return "\u24D8  Required";
    }
    return null;
  }

  String? validateLatitude(String value) {
    if(value == '' || value.isEmpty) {
      return "\u24D8 Required";
    }
    return null;
  }

  String? validateLongitude(String value) {
    if (value == '' || value.isEmpty) {
      return "\u24D8  Required";
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
