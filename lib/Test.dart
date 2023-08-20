// // ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// showDatePicker(
//                             context: context,
//                             initialDate: DateTime.now(),
//                             firstDate: DateTime(1900),
//                             lastDate: DateTime.now(),
//                           ).then((selectedDate) {
//                             if (selectedDate != null) {
//                               controller.selectBirthDate(selectedDate);
//                             }
//                           });
//                         },
//                         child: Obx(
//                           () => Container(
//                             padding: EdgeInsets.symmetric(vertical: 10),
//                             decoration: BoxDecoration(
//                               border: Border.all(color: Colors.grey),
//                               borderRadius: BorderRadius.circular(5),
//                             ),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 // Icon(Icons.calendar_today),
//                                 Text(
//                                   controller.selectedBirthDate.value != null
//                                       ? controller.selectedBirthDate.value!
//                                           .toString()
//                                           .split(' ')[0]
//                                       : 'Select Birth Date',
//                                 ),
//                                 Icon(Icons.arrow_drop_down),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),