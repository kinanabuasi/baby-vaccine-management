import 'package:get/get.dart';

import '../controllers/create_child_card_controller.dart';

class CreateChildCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateChildCardController>(
      () => CreateChildCardController(),
    );
  }
}
