// ignore_for_file: prefer_const_constructors, unused_import, duplicate_ignore
// // ignore_for_file: public_member_api_docs, sort_constructors_first
// // ignore_for_file: non_constant_identifier_names
// ignore_for_file: unused_local_variable, avoid_print, unused_import
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../../../linkapi.dart';
import 'package:baby_lc/app/modules/Adding_Center/views/adding_center_view.dart';
import 'package:baby_lc/app/modules/CreateChildCard/views/create_child_card_view.dart';
import 'app/modules/ForgetPassword/views/forget_password_view.dart';
import 'app/modules/GetAllGovernorate/views/get_all_governorate_view.dart';
import 'app/modules/GetRegionsofGovernorate/views/get_regionsof_governorate_view.dart';
import 'app/modules/Login/views/login_view.dart';
import 'app/modules/VerifyCode/views/verify_code_view.dart';
import 'app/modules/ViewCardsTable/views/view_cards_table_view.dart';
import 'app/routes/app_pages.dart';

void main() { 
  runApp(
    GetMaterialApp(
      // title: "Application",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,

      // home: 
      // ViewCardsTableView(),
      // GetRegionsofGovernorateView(),
      // VerifyCodeView(),
      // ForgetPasswordView(),
      // LoginView(),
      // GetAllGovernorateView(), 
      // ViewCardsTableView(),
      // CreateChildCardView(),
      // AddingCenterView(),
    ),
  );
}


