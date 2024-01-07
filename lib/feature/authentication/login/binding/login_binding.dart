import 'package:get/get.dart';
import 'package:sgt_owner/feature/authentication/login/controller/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}

