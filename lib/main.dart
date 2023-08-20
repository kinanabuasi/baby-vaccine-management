// ignore_for_file: prefer_const_constructors, unused_import

import 'package:baby_lc/app/modules/Adding_Center/views/adding_center_view.dart';
import 'package:baby_lc/app/modules/CreateChildCard/views/create_child_card_view.dart';
import 'package:flutter/material.dart'; 
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      // title: "Application",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,

      // home: 
      // CreateChildCardView(),
      // AddingCenterView(),

      
    ),
  );
}
