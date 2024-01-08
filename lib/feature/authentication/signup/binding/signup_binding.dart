import 'package:get/get.dart';
import 'package:sgt_owner/feature/authentication/signup/controller/signup_controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpController>(() => SignUpController());
  }
}