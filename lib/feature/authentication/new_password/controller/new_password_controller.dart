import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewPasswordController extends GetxController {
  final GlobalKey<FormState> passFormKey1 = GlobalKey<FormState>();
  final GlobalKey<FormState> passFormKey2 = GlobalKey<FormState>();

  late TextEditingController passwordController1, passwordController2;
  var password1 = '';
  var password2 = '';

  RxBool isPasswordValid1 = false.obs;
  RxBool isPasswordValid2 = false.obs;

  RxBool btnEnabled = false.obs;

  @override
  void onInit() {
    super.onInit();
    passwordController1 = TextEditingController();
    passwordController2 = TextEditingController();
  }

  @override
  void onClose() {
    passwordController1.dispose();
    passwordController2.dispose();
  }

  String? validatePassword(String value) {
    if (value == '' || value.isEmpty) {
      Future.delayed(Duration.zero, () {
        btnEnabled.value = false;
      });
      return "\u24D8  Password is required";
    }
    if (value.length < 8) {
      Future.delayed(Duration.zero, () {
        btnEnabled.value = false;
      });
      return "\u24D8  Password must be at least 8 characters long";
    }
    if (!value.contains(RegExp(r'[A-Z]'))) {
      Future.delayed(Duration.zero, () {
        btnEnabled.value = false;
      });
      return "\u24D8  Password must contain at least one uppercase letter";
    }
    if (!value.contains(RegExp(r'[a-z]'))) {
      Future.delayed(Duration.zero, () {
        btnEnabled.value = false;
      });
      return "\u24D8  Password must contain at least one lowercase letter";
    }
    if (!value.contains(RegExp(r'[0-9]'))) {
      Future.delayed(Duration.zero, () {
        btnEnabled.value = false;
      });
      return "\u24D8  Password must contain at least one numeric character";
    }
    if (!value.contains(RegExp(r'[!@#\$%^&*()<>?/|}{~:]'))) {
      Future.delayed(Duration.zero, () {
        btnEnabled.value = false;
      });
      return "\u24D8  Password must contain at least one special character";
    }
    Future.delayed(Duration.zero, () {
      btnEnabled.value = true;
    });
    return null;
  }

  void checkLogin() {
    isPasswordValid1.value = passFormKey1.currentState!.validate();
    if (!isPasswordValid1.value) {
      return;
    } else {
      passFormKey1.currentState!.save();
    }

    isPasswordValid2.value = passFormKey2.currentState!.validate();
    if (!isPasswordValid2.value) {
      return;
    } else {
      passFormKey2.currentState!.save();
    }
  }
}
