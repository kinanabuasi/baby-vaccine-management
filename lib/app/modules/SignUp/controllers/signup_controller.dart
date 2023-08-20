// ignore_for_file: unused_import, must_call_super, non_constant_identifier_names, override_on_non_overriding_member, avoid_print, prefer_const_constructors

import 'package:baby_lc/constants/colors.dart';
import 'package:flutter/material.dart%20';
import 'package:get/get.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import '../../../../core/class/crud.dart';
import '../../../../core/class/statusrequest.dart';
import '../../../../data/datasource/remote/auth/SignupData.dart';
import '../../../routes/app_pages.dart';
import '../../HandlingData/controllers/handling_data_controller.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToSignIn();
}

class SignUpControllerImp extends SignUpController {
  final Crud crud = Get.put(Crud());
  // final signUpFormState = GlobalKey<FormState>();
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phoneNumber;
  late TextEditingController password;
  late TextEditingController region;
  late TextEditingController addressTown;
  late TextEditingController detailedAddress;
  

  StatusRequest statusRequest = StatusRequest.none;

  SignupData signupData = SignupData(Get.find());

  List data = [];

  @override
  signUp() async {
    // if (signUpFormState.currentState!.validate()) {
    statusRequest = StatusRequest.loading;
    update();
    var response = await signupData.postdata(
        username.text, email.text, phoneNumber.text, password.text,region.text,addressTown.text,
        detailedAddress.text,);
    print("===============***================ Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        // data.addAll(response['data']);
        Get.offNamed(Routes.HOME_VIEW, arguments: {"email": email.text});
      } else {
        Get.defaultDialog(
            title: "ُWarning",
            middleText: "Phone Number Or Email Already Exists");
        statusRequest = StatusRequest.failure;
      }
    }
    update();
    // } else {

    // }
  }

  @override
  goToSignIn() {
    Get.offNamed(Routes.LOGIN);
  }

  @override
  void onInit() {
    username = TextEditingController();
    phoneNumber = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    region = TextEditingController();
    addressTown = TextEditingController();
    detailedAddress = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phoneNumber.dispose();
    password.dispose();
    region.dispose();
    addressTown.dispose();
    detailedAddress.dispose();
    super.dispose();
  }
}
//   late Key key; 
//   late TextEditingController email;
//   late TextEditingController password;
//   late TextEditingController repassword;
//   late TextEditingController f_username;
//   late TextEditingController l_username;
//   late TextEditingController phone;
//   bool isshowpass = true;
//   @override
//   signUp(context) {
//     if (signUpFormState.currentState!.validate()) {
//       showTopSnackBar(
//         context as OverlayState,
//         CustomSnackBar.success(
//           backgroundColor: mainColor2,
//           message: " your Sign Up is successful",
//         ),
//       ); 
//       Get.offNamed(Routes.LOGIN);
//       // Get.delete<SignUpControllerImp>();
//     } else {
//       showTopSnackBar(
//         context as OverlayState,
//         CustomSnackBar.error(
//           backgroundColor: Red,
//           message: "Unfortunately, your Sign Up is failed",
//         ),
//       );
//     }
//   } 
//   @override
//   goToLogIn() {
//     Get.offNamed(Routes.LOGIN);
//   } 
//   @override
//   void onInit() {
//     email = TextEditingController();
//     password = TextEditingController();
//     repassword = TextEditingController();
//     f_username = TextEditingController();
//     l_username = TextEditingController();
//     phone = TextEditingController();
//     super.onInit();
//   } 
//   @override
//   void dispose() {
//     email.dispose();
//     password.dispose();
//     repassword.dispose();
//     f_username.dispose();
//     l_username.dispose();
//     phone.dispose();
//     super.dispose();
//   }
//   // @override
//   // showpass() {
//   //   isshowpass = isshowpass==true? false:true;
//   //   update();
//   // }
// }
