// // ignore_for_file: unnecessary_new, prefer_void_to_null, unnecessary_this, unused_import, prefer_const_constructors, non_constant_identifier_names, invalid_use_of_protected_member, avoid_print, unnecessary_overrides, unused_local_variable

// import 'dart:convert';
// import 'package:dartz/dartz_streaming.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import '../../../../linkapi.dart';
// import '../model/get_all_governorate_model.dart';

// class GetAllGovernorateController extends GetxController {
//   RxList<String> governorates = <String>[].obs;

//   Future<void> fetchGovernorates() async {
//     try {
//       final response = await http.get(Uri.parse(AppLink.GetAllGovernorate));

//       if (response.statusCode == 200) {
//         Map<String, dynamic> data = json.decode(response.body);
//         // print(data);

//         GetAllGovernorate governorate = GetAllGovernorate.fromJson(data);
//         // governorates = governorate.request.header;

//         governorates.value = governorate.response?.cast<String>() ?? [];
//         // governorates.clear(); // Clear the list before adding new data
//         print(governorates.value);

//         // data.forEach((key, value) {
//         //   if (value is String) {
//         //     governorates.add(value);
//         //   }
//         // });
//         // print(data);
//       }  else {
//         throw Exception('Failed to fetch governorates');
//       }
//     } catch (e) {
//       throw Exception('Failed to fetch governorates: $e');
//     }
//   }

//   final count = 0.obs;
//   @override
//   void onInit() {
//     super.onInit();
//   }

//   @override
//   void onReady() {
//     super.onReady();
//   }

//   @override
//   void onClose() {
//     super.onClose();
//   }

//   void increment() => count.value++;
// }
