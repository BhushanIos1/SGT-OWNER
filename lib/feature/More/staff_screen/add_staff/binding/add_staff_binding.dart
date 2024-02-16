import 'package:get/get.dart';
import 'package:sgt_owner/feature/More/staff_screen/add_staff/controller/add_staff_controller.dart';

class AddStaffBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddStaffController>(() => AddStaffController());
  }
}