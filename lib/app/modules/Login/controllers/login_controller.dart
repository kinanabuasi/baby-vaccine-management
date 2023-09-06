// ignore_for_file: unused_import, must_call_super, avoid_print, prefer_const_constructors, override_on_non_overriding_member, non_constant_identifier_names, unused_local_variable, unnecessary_this

import 'dart:convert';
import 'package:baby_lc/app/routes/app_pages.dart';
import 'package:baby_lc/constants/colors.dart';
import 'package:flutter/material.dart%20';
import 'package:get/get.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import '../../../../core/class/App.dart';
import '../../../../core/class/statusrequest.dart';
import '../../../../core/services/services.dart';
import '../../../../data/datasource/remote/auth/login.dart';
import '../../../../linkapi.dart';
import '../../HandlingData/controllers/handling_data_controller.dart';
import '../../home/views/home_view.dart';

class LoginController extends GetxController {
  // login();
  // goToSignUp();
  // goToForgetPassword();
// }

// class LoginControllerImp extends LoginController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
//   TextEditingController phone = TextEditingController();
//   String dropdownvalue = 'User';
//   RxBool loading = false.obs;

//   static String? token;
//   static String? Typeuser;

//   Future<bool> login(String email, String pass) async {
//     var headers = {'Accept': 'application/json'};
//     var request = http.MultipartRequest('POST', Uri.parse(AppLink.login));
//     request.fields.addAll({'email': email, 'password': pass});

//     request.headers.addAll(headers);

//     http.StreamedResponse response = await request.send();

//     if (response.statusCode == 200) {
//       String jsonData = await response.stream.bytesToString();
//       var data = json.decode(jsonData);
//       SignInModel signInModel = SignInModel.fromJson(data);
//       Typeuser = signInModel.user!.typeUser!;
//       token = signInModel.user!.apiToken!;
//       print(jsonData);

//       print(token);
//       return true;
//     } else {
//       print(response.reasonPhrase);
//       return false;
//     }
//   }

  @override
  void onInit() {
    super.onInit();
    email.text = "baby.lc.admin@gmail.com";
    password.text = "12345678";
  }

//   void login_v(BuildContext context) {
//     if (email.text.isEmpty) {
//       App.Err("Email Cannot be empty", context);
//       return;
//     }
//     if (password.text.isEmpty) {
//       App.Err("Password Cannot be empty", context);
//       return;
//     }

//     loading.value = true;

//     login(email.text, password.text).then((value) {
//       loading.value = false;
//       if (value) {
//         App.Succ("LogIn has been successfully", context);

//         Get.to(HomeView());
//       } else {
//         App.Err("Oops wrong Email or password", context);
//       }
//     });

// //   LoginData loginData = LoginData(Get.find());
// //   // GlobalKey<FormState> loginFormState = GlobalKey<FormState>();
// //   late TextEditingController email;
// //   late TextEditingController password;
// //   String? token;
// //   bool isshowpassword = true;
// //   MyServices myServices = Get.find();
// //   StatusRequest statusRequest = StatusRequest.none;
// //   showPassword() {
// //     isshowpassword = isshowpassword == true ? false : true;
// //     update();
// //   }
// //   @override
// //   login() async {
// //     // if (loginFormState.currentState!.validate()) {
// //       statusRequest = StatusRequest.loading;
// //       update();
// //       var response = await loginData.postdata(email.text, password.text);
// //       print("=============================== Controller $response ");
// //       statusRequest = handlingData(response);
// //       if (StatusRequest.success == statusRequest) {
// //         if (response['status'] == "success") {
// //           // data.addAll(response['data']);
// //           if (response['data']['users_approve'] == "1") {
// //             myServices.sharedPreferences
// //                 .setString("id", response['data']['users_id']);
// //             String userid = myServices.sharedPreferences.getString("id")!;
// //             myServices.sharedPreferences
// //                 .setString("username", response['data']['users_name']);
// //             myServices.sharedPreferences
// //                 .setString("email", response['data']['users_email']);
// //             myServices.sharedPreferences
// //                 .setString("phone", response['data']['users_phone']);
// //             myServices.sharedPreferences.setString("step", "2");
// //             // FirebaseMessaging.instance.subscribeToTopic("users");
// //             // FirebaseMessaging.instance.subscribeToTopic("users${userid}");
// //             Get.offNamed(Routes.HOME_VIEW);
// //           } else {
// //             Get.toNamed(Routes.VERIFY_CODE_SIGN_UP,
// //                 arguments: {"email": email.text});
// //           }
// //         } else {
// //           Get.defaultDialog(
// //               title: "ُWarning", middleText: "Email Or Password Not Correct");
// //           statusRequest = StatusRequest.failure;
// //         }
// //       }
// //       update();
// //     // } else {}
// //   }
// //   @override
// //   goToSignUp() {
// //     Get.offNamed(Routes.SIGN_UP);
// //   }
// //  @override
// //   void onInit() {
// //     fetchTokenFromAPI();
// //     super.onInit();
// //   }
// //   void fetchTokenFromAPI() async {
// //     try {
// //       final response = await http.get(Uri.parse('http://localhost:your_port/token'));
// //       if (response.statusCode == 200) {
// //         token = response.body;
// //         print(token);
// //       } else {
// //         print('Failed to fetch token. Status code: ${response.statusCode}');
// //       }
// //     } catch (e) {
// //       print('Failed to fetch token: $e');
// //     }
// //   }
// //   // @override
// //   // void onInit() {
// //   //   FirebaseMessaging.instance.getToken().then((value) {
// //   //     print(value);
// //   //     String? token = value;
// //   //   });
// //   //   email = TextEditingController();
// //   //   password = TextEditingController();
// //   //   super.onInit();
// //   // }
// //   @override
// //   void dispose() {
// //     email.dispose();
// //     password.dispose();
// //     super.dispose();
// //   }
// //   @override
// //   goToForgetPassword() {
// //     Get.toNamed(Routes.FORGET_PASSWORD);
// //   }
//   }

//   @override
//   void onClose() {
//     email.clear();
//     password.clear();
//     super.onClose();
//   }
// }

// class SignInModel {
//   bool? status;
//   String? errNum;
//   String? msg;
//   User? user;

//   SignInModel({this.status, this.errNum, this.msg, this.user});

//   SignInModel.fromJson(Map<String, dynamic> json) {
//     status = json['status'];
//     errNum = json['errNum'];
//     msg = json['msg'];
//     user = json['user'] != null ? new User.fromJson(json['user']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['status'] = this.status;
//     data['errNum'] = this.errNum;
//     data['msg'] = this.msg;
//     if (this.user != null) {
//       data['user'] = this.user!.toJson();
//     }
//     return data;
//   }
}

class User {
  int? id;
  String? email;
  Null emailVerifiedAt;
  String? typeUser;
  int? statusActive;
  String? createdAt;
  String? updatedAt;
  String? apiToken;

  User(
      {this.id,
      this.email,
      this.emailVerifiedAt,
      this.typeUser,
      this.statusActive,
      this.createdAt,
      this.updatedAt,
      this.apiToken});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    typeUser = json['type_user'];
    statusActive = json['status_active'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    apiToken = json['api_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['type_user'] = this.typeUser;
    data['status_active'] = this.statusActive;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['api_token'] = this.apiToken;
    return data;
  }
}
