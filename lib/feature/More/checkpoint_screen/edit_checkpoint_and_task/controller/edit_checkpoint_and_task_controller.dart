import 'package:get/get.dart';
import 'package:flutter/material.dart';


class EditCheckpointAndTaskController extends GetxController{
  var currentStep = 0.obs;

  final GlobalKey<FormState> checkpointNameFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> checkpointDescriptionFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> latitudeFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> longitudeFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> taskFormKey = GlobalKey<FormState>();

  late TextEditingController
      checkpointNameController,
      checkpointDescriptionController,
      latitudeController,
      longitudeController,
      commentController,
      taskController;

  var checkpointName = '';
  var checkpointDescription='';
  var latitude='';
  var longitude='';
  var task='';
  var comment='';

  // RxBool isCheckpointNameValid = false.obs;


  // RxBool btnEnabled = false.obs;

  @override
  void onInit() {
    super.onInit();
    checkpointNameController = TextEditingController();
    checkpointDescriptionController = TextEditingController();
    latitudeController = TextEditingController();
    longitudeController = TextEditingController();
    taskController = TextEditingController();
    commentController=TextEditingController();
  }

  @override
  void onClose() {
    checkpointNameController.dispose();
    checkpointDescriptionController.dispose();
    latitudeController.dispose();
    longitudeController.dispose();
    taskController.dispose();
    commentController.dispose();
  }

  String? validateCheckpointName(String value) {
    if (value == '' || value.isEmpty) {
      return "\u24D8  Please Enter Checkpoint Name";
    }
    return null;
  }

  String? validateCheckpointDescription(String value) {
    if (value == '' || value.isEmpty) {
      return "\u24D8  Enter Checkpoint Description";
    }
    return null;
  }

  String? validateLatitude(String value) {
    if (value == '' || value.isEmpty) {
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

  String? validateTask(String value) {
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