import 'package:get/get.dart';
import 'package:sgt_owner/feature/authentication/resetPassword/controller/reset_password_controller.dart';

class ResetPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ResetController>(() => ResetController());
  }
}