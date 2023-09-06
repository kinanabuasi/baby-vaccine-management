import 'package:get/get.dart';

import '../controllers/register_nurse_controller.dart';

class RegisterNurseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterNurseController>(
      () => RegisterNurseController(),
    );
  }
}
