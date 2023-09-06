// ignore_for_file: non_constant_identifier_names, unused_import, prefer_const_constructors, camel_case_types, unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class CreateChildCardController extends GetxController {
  String? SelectedGender;
  // late TextEditingController nameController ;
  // late TextEditingController regionController ;
  // late TextEditingController governorateController ;
  // late TextEditingController dosesController ;
  // late TextEditingController centerNameController ;
  // late TextEditingController centerNumberController ;
  // late TextEditingController birthDateController ;
  // late TextEditingController StatusLeakyController ;
  // late TextEditingController genderController ;
  List<String> genderOptions = ['Male', 'Female'];
  String selectedGender = 'Male';
// DateTime initialDate = DateTime.now();
  Rx<DateTime> selectedBirthDate = Rx<DateTime>(DateTime.now());

  void selectBirthDate(DateTime dateTime) {
    selectedBirthDate.value = dateTime;
  }

//   void saveChild() {
//     if (nameController.text.isNotEmpty) {
//       // Perform saving logic here
//       String childName = nameController.text;
//       DateTime birthDate = selectedBirthDate.value;
//       // Save the child with the provided name and birth date
//       // Add your own saving implementation
//     } else {
//       // Show an error or validation message if necessary
//     }
//   }

  
//   @override
//   void onClose() {
//      nameController.clear();
//     regionController.clear();
//     governorateController.clear();
//     dosesController.clear();
//     centerNameController.clear();
//     centerNumberController.clear();
//     birthDateController.clear();
//     StatusLeakyController.clear();
//     genderController.clear();
   
//     update();
//   }

//   void onCreateChildCardSave() {
//     nameController.clear();
//     regionController.clear();
//     governorateController.clear();
//     dosesController.clear();
//     centerNameController.clear();
//     centerNumberController.clear();
//     birthDateController.clear();
//     StatusLeakyController.clear();
//     genderController.clear();
   
//     update();
//   }
// // late List<String> gender = [
// //     'Male',
// //     'Female',
// //   ];
//     @override
//   void onInit() {
//     nameController = TextEditingController();
//     regionController = TextEditingController();
//     governorateController = TextEditingController();
//     dosesController = TextEditingController();
//     centerNameController = TextEditingController();
//     centerNumberController = TextEditingController();
//     birthDateController = TextEditingController();
//     StatusLeakyController = TextEditingController();
//     genderController = TextEditingController();
//     super.onInit();
    
//   }
 }

