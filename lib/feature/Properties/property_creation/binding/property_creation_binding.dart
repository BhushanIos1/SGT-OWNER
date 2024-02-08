import 'package:get/get.dart';
import 'package:sgt_owner/feature/Properties/property_creation/controller/property_creation_controller.dart';

class PropertyCreationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PropertyCreationController>(() => PropertyCreationController());
  }
}