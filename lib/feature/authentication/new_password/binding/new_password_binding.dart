import 'package:get/get.dart';
import 'package:sgt_owner/feature/authentication/new_password/controller/new_password_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewPasswordController>(() => NewPasswordController());
  }
}