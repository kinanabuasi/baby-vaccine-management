// ignore_for_file: unused_import, prefer_const_constructors, non_constant_identifier_names, annotate_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart'; 
import '../../../../constants/colors.dart';
import '../../../routes/app_pages.dart';

abstract class AddingCenterController extends GetxController {
  GoToHomePage(BuildContext context);
// String? selectedClient;
//   String? selectedCode;
}

class AddingCenterControllerImp extends AddingCenterController {

  late TextEditingController nameController ;
  late TextEditingController phoneController ;
  late TextEditingController goalController ;
  late TextEditingController dosesController ;
  late TextEditingController titleController ;
  late TextEditingController addressController ;
//     final TextEditingController textEditingController = TextEditingController();
//  final RxString errorText = RxString('');
//  void validateEmail() {
//     final String value = textEditingController.text.trim();
//     if (value.isEmpty) {
//       errorText.value = 'Email is required';
//     } else if (!GetUtils.isEmail(value)) {
//       errorText.value = 'Invalid email';
//     } else {
//       errorText.value = '';
//     }
//   } 
  // List itemsDrop1 = [
  //   "123026",
  //   "00000",
  //   "1201",
  //   "555055",
  // ];
  //   void onAddingCenterSave() {
  //   nameController.clear();
  //   phoneController.clear();
  //   goalController.clear();
  //   dosesController.clear();
  //   titleController.clear();
  //   addressController.clear();
  //   update();
  // }
  // GoToHomePage(context) {
  //   // if (formState.currentState!.validate()){
  //     showTopSnackBar(
  //       context as OverlayState,
  //       CustomSnackBar.success(
  //         message: "Good job, A new Center is successfully added",
  //         backgroundColor: mainColor2,
  //         textStyle: TextStyle(
  //           fontSize: 25,
  //           fontWeight: FontWeight.bold,
  //           color: textcolor,
  //         ),
  //       ),
  //     ); 
      // Get.offNamed(Routes.HOME_VIEW);
      // Get.delete<SignUpControllerImp>();
    // } else {
      // showTopSnackBar(
      //   context as OverlayState,
      //   CustomSnackBar.error(
      //     backgroundColor: Colors.red,
      //     message: "Unfortunately, your Sign Up is failed",
      //   ),
      // );
    // }
  // }

  // final count = 0.obs;
  @override
  void onInit() {
    nameController = TextEditingController();
    phoneController = TextEditingController();
    goalController = TextEditingController();
    dosesController = TextEditingController();
    titleController = TextEditingController();
    addressController = TextEditingController();
    super.onInit();
    
  }

  @override
  void onClose() {
    nameController.dispose();
    phoneController.dispose();
    goalController.dispose();
    dosesController.dispose();
    titleController.dispose();
    addressController.dispose();
    super.dispose();
    
  } 

  @override
  void onReady() {
    super.onReady();
  }
  
  @override
  GoToHomePage(BuildContext context) {
    // TODO: implement GoToHomePage
    throw UnimplementedError();
  }

  // void increment() => count.value++;
}


