// // ignore_for_file: unused_import, must_call_super, non_constant_identifier_names, override_on_non_overriding_member, avoid_print, prefer_const_constructors

// import 'package:baby_lc/constants/colors.dart';
// import 'package:flutter/material.dart%20';
// import 'package:get/get.dart';
// import 'package:top_snackbar_flutter/custom_snack_bar.dart';
// import 'package:top_snackbar_flutter/top_snack_bar.dart';
// import '../../../../core/class/App.dart';
// import '../../../../core/class/crud.dart';
// import '../../../../core/class/statusrequest.dart';
// import '../../../../data/datasource/remote/auth/SignupData.dart';
// import '../../../../linkapi.dart';
// import '../../../routes/app_pages.dart';
// import '../../HandlingData/controllers/handling_data_controller.dart';
// import '../../home/views/home_view.dart';
// import '../views/sign_up_view.dart';
// import 'dart:convert'; 
// import 'package:http/http.dart' as http ; 

// class SignUpController extends GetxController {
//   TextEditingController email = TextEditingController();
//   TextEditingController password = TextEditingController();
//   TextEditingController name = TextEditingController();
//   String dropdownvalue = 'Customer';
//   bool loading = false;

//    static Future<bool> regester(String email,String name,String pass)async{
//     var headers = {
//       'Accept': 'application/json'
//     };
//     var request = http.MultipartRequest('POST', Uri.parse(AppLink.Register_Center));
//     request.fields.addAll({
//       'email': email,
//       'name': name,
//       'password': pass,
//       'password_confirmation': pass
//     });

//     request.headers.addAll(headers);

//     http.StreamedResponse response = await request.send();

//     if (response.statusCode == 200) {
//       String jsonData = await response.stream.bytesToString();
//       var data = json.decode(jsonData);
//       // UserDecoder userDecoder = UserDecoder.fromMap(data);
//       // user = userDecoder.data.user;
//       // token = userDecoder.data.token;
//       // print(token);
//       return true;
//     }
//     else {
//       print(response.reasonPhrase);
//       return false;
//     }

//   }

//   signup(BuildContext context) {
//     if (email.text.isEmpty) {
//       App.Err("Email Cannot be empty", context);
//       return;
//     }
//     if (password.text.isEmpty) {
//       App.Err("Password Cannot be empty", context);
//       return;
//     }
//     if (name.text.isEmpty) {
//       App.Err("UserName Cannot be empty", context);
//       return;
//     }
//     loading = true;
//     update();

//     regester(email.text, name.text, password.text).then((value) {
//       loading = false;
//       update();

//       if (value) {
//         App.Succ("SignUp has been successfully", context);

//         Get.offAll(() => HomeView());

//       } else {
//         App.Err("Oops Email or UserName is already exist", context);
//       }
//     });
//   }
// }