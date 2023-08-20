import 'package:get/get.dart';

import '../controllers/adding_center_controller.dart';

class AddingCenterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddingCenterControllerImp>(
      () => AddingCenterControllerImp(),
    );
  }
}
