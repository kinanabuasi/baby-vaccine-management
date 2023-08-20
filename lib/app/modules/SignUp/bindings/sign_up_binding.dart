// ignore_for_file: unused_import

import 'package:baby_lc/app/modules/SignUp/controllers/signup_controller.dart';
import 'package:get/get.dart';


class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpControllerImp>(
      () => SignUpControllerImp(),
    );
  }
}
