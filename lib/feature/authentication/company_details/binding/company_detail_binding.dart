import 'package:get/get.dart';
import 'package:sgt_owner/feature/authentication/company_details/controller/company_details_controller.dart';

class CompanyDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CompanyDetailsController>(() => CompanyDetailsController());
  }
}