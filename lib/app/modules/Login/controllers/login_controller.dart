// ignore_for_file: unused_import, must_call_super, avoid_print, prefer_const_constructors, override_on_non_overriding_member, non_constant_identifier_names, unused_local_variable

import 'package:baby_lc/app/routes/app_pages.dart';
import 'package:baby_lc/constants/colors.dart';
import 'package:flutter/material.dart%20';
import 'package:get/get.dart'; 
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:dartz/dartz.dart'; 
import 'package:http/http.dart' as http ; 
import '../../../../core/class/statusrequest.dart';
import '../../../../core/services/services.dart';
import '../../../../data/datasource/remote/auth/login.dart';
import '../../HandlingData/controllers/handling_data_controller.dart';



abstract class LoginController extends GetxController {
  // login();
  // goToSignUp();
  // goToForgetPassword();
}

class LoginControllerImp extends LoginController {
//   LoginData loginData = LoginData(Get.find());

//   GlobalKey<FormState> loginFormState = GlobalKey<FormState>();

//   late TextEditingController email;
//   late TextEditingController password;
//   String? token;

//   bool isshowpassword = true;

//   MyServices myServices = Get.find();

//   StatusRequest statusRequest = StatusRequest.none;

//   showPassword() {
//     isshowpassword = isshowpassword == true ? false : true;
//     update();
//   }

//   @override
//   login() async {
//     if (loginFormState.currentState!.validate()) {
//       statusRequest = StatusRequest.loading;
//       update();
//       var response = await loginData.postdata(email.text, password.text);
//       print("=============================== Controller $response ");
//       statusRequest = handlingData(response);
//       if (StatusRequest.success == statusRequest) {
//         if (response['status'] == "success") {
//           // data.addAll(response['data']);
//           if (response['data']['users_approve'] == "1") {
//             myServices.sharedPreferences
//                 .setString("id", response['data']['users_id']);
//             String userid = myServices.sharedPreferences.getString("id")!;
//             myServices.sharedPreferences
//                 .setString("username", response['data']['users_name']);
//             myServices.sharedPreferences
//                 .setString("email", response['data']['users_email']);
//             myServices.sharedPreferences
//                 .setString("phone", response['data']['users_phone']);
//             myServices.sharedPreferences.setString("step", "2");

//             // FirebaseMessaging.instance.subscribeToTopic("users");
//             // FirebaseMessaging.instance.subscribeToTopic("users${userid}");
            
//             Get.offNamed(Routes.HOME_VIEW);
//           } else {
//             Get.toNamed(Routes.VERIFY_CODE_SIGN_UP,
//                 arguments: {"email": email.text});
//           }
//         } else {
//           Get.defaultDialog(
//               title: "ُWarning", middleText: "Email Or Password Not Correct");
//           statusRequest = StatusRequest.failure;
//         }
//       }
//       update();
//     } else {}
//   }

//   @override
//   goToSignUp() {
//     Get.offNamed(Routes.SIGN_UP);
//   }
//  @override
//   void onInit() {
//     fetchTokenFromAPI();
//     super.onInit();
//   }

//   void fetchTokenFromAPI() async {
//     try {
//       final response = await http.get(Uri.parse('http://localhost:your_port/token'));
//       if (response.statusCode == 200) {
//         token = response.body;
//         print(token);
//       } else {
//         print('Failed to fetch token. Status code: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('Failed to fetch token: $e');
//     }
//   }
//   // @override
//   // void onInit() {
//   //   FirebaseMessaging.instance.getToken().then((value) {
//   //     print(value);
//   //     String? token = value;
//   //   });
//   //   email = TextEditingController();
//   //   password = TextEditingController();
//   //   super.onInit();
//   // }

//   @override
//   void dispose() {
//     email.dispose();
//     password.dispose();
//     super.dispose();
//   }

//   @override
//   goToForgetPassword() {
//     Get.toNamed(Routes.FORGET_PASSWORD);
//   }
}