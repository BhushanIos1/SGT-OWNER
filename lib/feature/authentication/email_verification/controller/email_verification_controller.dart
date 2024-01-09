import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailVerificationController extends GetxController {
  final GlobalKey<FormState> emailFormKey = GlobalKey<FormState>();

  late TextEditingController emailController;
  var email = '';

  RxBool btnEnabled = false.obs;

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
  }

  @override
  void onClose() {
    emailController.dispose();
  }

  String? validateOTP(String value) {
    if (value == '' || value.isEmpty) {
      Future.delayed(Duration.zero, () {
        btnEnabled.value = false;
      });
      return "\u24D8  OTP is required";
    }
    if (value.length < 10) {
      Future.delayed(Duration.zero, () {
        btnEnabled.value = false;
      });
      return "\u24D8  OTP must be at least 10 characters long";
    }
    Future.delayed(Duration.zero, () {
      btnEnabled.value = true;
    });
    return null;
  }

  void checkLogin() {
    final isEmailValid = emailFormKey.currentState!.validate();
    if (!isEmailValid) {
      return;
    } else {
      if (Get.parameters['otp'].toString() == 'Otp') {
        Get.toNamed("/new_password")!.then((value) {
          emailController.clear();
        });
      } else {
        Get.toNamed("/company_details")!.then((value) {
          emailController.clear();
        });
      }
      emailFormKey.currentState!.save();
    }
  }
}
