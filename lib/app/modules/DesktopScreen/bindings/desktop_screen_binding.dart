import 'package:get/get.dart';

import '../controllers/desktop_screen_controller.dart';

class DesktopScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DesktopScreenController>(
      () => DesktopScreenController(),
    );
  }
}
