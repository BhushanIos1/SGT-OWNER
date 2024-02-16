import 'package:get/get.dart';
import 'package:sgt_owner/feature/More/shifts_screen/edit_shift/controller/edit_shift_controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditShiftController>(() => EditShiftController());
  }
}