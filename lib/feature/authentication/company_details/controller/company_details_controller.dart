import 'package:flutter/material.dart';
import 'package:get/get.dart';

class  CompanyDetailsController extends GetxController {
  final GlobalKey<FormState> companyNameFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> bsisNumberFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> federalNumberFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> companyAddressFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> postalCodeFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> selectCountryFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> selectStateFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> selectCityFormKey = GlobalKey<FormState>();

  late TextEditingController 
      companyNameController,
      bsisNumberController,
      federalNumberController,
      companyAddressController,
      postalCodeController;
  var companyName= '';
  var bsisNumber = '';
  var federalNumber = '';
  var companyAddress = '';
  var postalCode = '';
  var selectCountry = '';
  var selectState='';
  var selectCity='';


  RxBool isCompanyNameValid = false.obs;
  RxBool isCompanyAddressValid = false.obs;
  RxBool isPostalCodeValid = false.obs;
  // RxBool btnEnabled = false.obs;

  @override
  void onInit() {
    super.onInit();
    companyNameController = TextEditingController();
    bsisNumberController = TextEditingController();
    federalNumberController = TextEditingController();
    companyAddressController = TextEditingController();
    postalCodeController = TextEditingController();
    // passwordController2 = TextEditingController();
  }

  @override
  void onClose() {
    companyNameController.dispose();
    bsisNumberController.dispose();
    federalNumberController.dispose();
    companyAddressController.dispose();
    postalCodeController.dispose();
    // passwordController2.dispose();
  }

  String? validateCompanyName(String value) {
    if (value == '' || value.isEmpty) {
      return "\u24D8  Please Enter Company Name";
    }
    return null;
  }

  String? validateCompanyAddress(String value) {
    if (value == '' || value.isEmpty) {
      return "\u24D8  Please Enter Company Address";
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
    isCompanyNameValid.value = companyNameFormKey.currentState!.validate();
    if (!isCompanyNameValid.value) {
      return;
    } else {
      companyNameFormKey.currentState!.save();
    }
    isCompanyAddressValid.value = companyAddressFormKey.currentState!.validate();
    if (!isCompanyAddressValid.value) {
      return;
    } else {
      companyAddressFormKey.currentState!.save();
    }
    isPostalCodeValid.value = postalCodeFormKey.currentState!.validate();
    if (!isPostalCodeValid.value) {
      return;
    } else {
      postalCodeFormKey.currentState!.save();
    }

    Get.toNamed("/billing_address");

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
