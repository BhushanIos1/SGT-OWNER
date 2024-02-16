import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> emailFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> passFormKey = GlobalKey<FormState>();

  late TextEditingController emailController, passwordController;
  var email = '';
  var password = '';

  RxBool isEmailValid = false.obs;
  RxBool isPasswordValid = false.obs;

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      Future.delayed(Duration.zero, () {
        isEmailValid.value = false;
      });

      return "\u24D8  Enter valid Email Id";
    }
    Future.delayed(Duration.zero, () {
      isEmailValid.value = true;
    });

    return null;
  }

  String? validatePassword(String value) {
    if (value == '' || value.isEmpty) {
      return "\u24D8  Password is required";
    }
    if (value.length < 8) {
      return "\u24D8  Password must be at least 8 characters long";
    }
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return "\u24D8  Password must contain at least one uppercase letter";
    }
    if (!value.contains(RegExp(r'[a-z]'))) {
      return "\u24D8  Password must contain at least one lowercase letter";
    }
    if (!value.contains(RegExp(r'[0-9]'))) {
      return "\u24D8  Password must contain at least one numeric character";
    }
    if (!value.contains(RegExp(r'[!@#\$%^&*()<>?/|}{~:]'))) {
      return "\u24D8  Password must contain at least one special character";
    }
    return null;
  }

  void checkLogin() {
    isEmailValid.value = emailFormKey.currentState!.validate();
    if (!isEmailValid.value) {
      return;
    } else {
      emailFormKey.currentState!.save();
    }

    isPasswordValid.value = passFormKey.currentState!.validate();
    if (!isPasswordValid.value) {
      return;
    } else {
      // Get.defaultDialog(middleText: "Login Successfully");
      Get.offNamed("/dashboard");
      passFormKey.currentState!.save();
    }
  }
}
