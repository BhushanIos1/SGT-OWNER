import 'package:get/get.dart';
import 'package:sgt_owner/feature/authentication/payment/controller/apply_coupon_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApplyCouponController>(() => ApplyCouponController());
  }
}

