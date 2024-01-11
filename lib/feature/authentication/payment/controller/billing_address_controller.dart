import 'package:flutter/material.dart';
import 'package:get/get.dart';

class  BillingAddressController extends GetxController {
  final GlobalKey<FormState> streetAddressFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> postalCodeFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> selectCountryFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> selectStateFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> selectCityFormKey = GlobalKey<FormState>();

  late TextEditingController 
      streetAddressController,
      postalCodeController;
  var streetAddress = '';
  var postalCode = '';
  var selectCountry = '';
  var selectState='';
  var selectCity='';


  RxBool isStreetAddressValid = false.obs;
  RxBool isPostalCodeValid = false.obs;
  // RxBool isNumberValid = false.obs;
  // RxBool btnEnabled = false.obs;

  @override
  void onInit() {
    super.onInit();
    streetAddressController = TextEditingController();
    postalCodeController = TextEditingController();
    // passwordController2 = TextEditingController();
  }

  @override
  void onClose() {
    streetAddressController.dispose();
    postalCodeController.dispose();
    // passwordController2.dispose();
  }

  String? validateStreetAddress(String value) {
    if (value == '' || value.isEmpty) {
      return "\u24D8  Please Enter Street Address";
    }
    return null;
  }

  String? validatePostalCode(String value) {
    if (value == '' || value.isEmpty) {
      return "\u24D8  Please Enter Postal Code";
    }
    return null;
  }

  void checkValidFormField() {
    // isStreetAddressValid.value = streetAddressFormKey.currentState!.validate();
    // if (!isStreetAddressValid.value) {
    //   return;
    // } else {
    //   streetAddressFormKey.currentState!.save();
    // }
    // isPostalCodeValid.value = postalCodeFormKey.currentState!.validate();
    // if (!isPostalCodeValid.value) {
    //   return;
    // } else {
    //   postalCodeFormKey.currentState!.save();
    // }
    Get.toNamed("/payment_details",parameters: {"payment":"true"});
    // isPasswordValid2.value = passFormKey2.currentState!.validate();
    // if (!isPasswordValid2.value) {
    //   return;
    // } else {
    //   Get.toNamed("/email_verification",
    //       parameters: {"email": emailController.text});
    //   passFormKey2.currentState!.save();
    // }
  }
}
