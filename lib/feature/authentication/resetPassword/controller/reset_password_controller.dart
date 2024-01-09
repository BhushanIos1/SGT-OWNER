import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetController extends GetxController {
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

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      Future.delayed(Duration.zero, () {
        btnEnabled.value = false;
      });

      return "\u24D8  Enter valid Email Id";
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
      emailFormKey.currentState!.save();

      Get.toNamed("/email_verification",
              parameters: {"email": emailController.text,"otp":'Otp'})!
          .then((value) {
        emailController.clear();
      });
    }
  }
}
