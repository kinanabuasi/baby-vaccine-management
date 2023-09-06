import 'package:get/get.dart';

import '../controllers/get_register_nurse_controller.dart';

class GetRegisterNurseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetRegisterNurseController>(
      () => GetRegisterNurseController(),
    );
  }
}
