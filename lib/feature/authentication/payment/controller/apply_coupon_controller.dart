import 'package:flutter/material.dart';
import 'package:get/get.dart';

class  ApplyCouponController extends GetxController {
  final GlobalKey<FormState> couponCodeFormKey = GlobalKey<FormState>();

  late TextEditingController 
      couponCodeController;
  var couponCode = '';


  // RxBool isStreetAddressValid = false.obs;
  // RxBool btnEnabled = false.obs;

  @override
  void onInit() {
    super.onInit();
    couponCodeController = TextEditingController();
  }

  @override
  void onClose() {
    couponCodeController.dispose();
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
    Get.toNamed("/payment_details");
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
