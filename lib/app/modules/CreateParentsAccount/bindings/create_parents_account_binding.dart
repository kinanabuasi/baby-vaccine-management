import 'package:get/get.dart';

import '../controllers/create_parents_account_controller.dart';

class CreateParentsAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateParentsAccountController>(
      () => CreateParentsAccountController(),
    );
  }
}
