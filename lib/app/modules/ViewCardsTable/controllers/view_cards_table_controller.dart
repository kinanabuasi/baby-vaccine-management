// // // ignore_for_file: public_member_api_docs, sort_constructors_first
// // // ignore_for_file: non_constant_identifier_names
// // ignore_for_file: unused_local_variable, avoid_print, unused_import
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import '../../../../linkapi.dart';
// import '../controllers/view_cards_table_controller.dart';

// class ViewCardsTableController extends GetxController {
//   final count = 0.obs;

//   Future<List> getData() async {
//     http.Response response = await http.get(
//       AppLink.GetAllGovernorate as Uri,
//     );
//     return json.decode(response.body);
//   }

//   void getD() async {
//     List data = await getData();
//     print(getData);
//     print(data);
//   }

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
