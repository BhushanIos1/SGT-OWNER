
import 'package:get/get.dart';
import 'package:sgt_owner/feature/authentication/email_verification/controller/email_verification_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EmailVerificationController>(() => EmailVerificationController());
  }
}