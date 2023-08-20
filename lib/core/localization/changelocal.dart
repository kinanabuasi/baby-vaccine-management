// ignore_for_file: empty_constructor_bodies, unused_local_variable, must_call_super, unused_import


import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import '../services/services.dart';
// import 'package:translator/translator.dart';
class LocaleController extends GetxController {
  Locale? language;
  MyServices myservices = Get.find();

  changeLang(String langcode) {
    Locale locale = Locale(langcode);
    myservices.sharedPreferences.setString("lang", langcode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLang = myservices.sharedPreferences.getString("lang");
    if (sharedPrefLang == "ar") {
      language = const Locale("ar");
    } else if (sharedPrefLang == "en") {
      language = const Locale("en");
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
  }
}
