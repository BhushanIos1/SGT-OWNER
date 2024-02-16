import 'package:get/get.dart';
import 'package:sgt_owner/feature/More/checkpoint_screen/edit_checkpoint_and_task/controller/edit_checkpoint_and_task_controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditCheckpointAndTaskController>(() => EditCheckpointAndTaskController());
  }
}