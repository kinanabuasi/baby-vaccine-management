// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_const_constructors_in_immutables, unused_import

import 'package:baby_lc/components/auth/CustomButtomAuth.dart';
import 'package:baby_lc/components/auth/customlogo.dart';
import 'package:baby_lc/components/auth/customtextsign.dart';
import 'package:baby_lc/core/functions/alertexitapp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../components/auth/customtextform.dart';
import '../../../../components/my_text.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/component .dart';
import '../../../../core/functions/localization/validinput.dart';
import '../../HandlingData/views/handling_data_view.dart';
import '../controllers/login_controller.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
  //     body: WillPopScope(
  //       onWillPop: alertExitApp,
  //       child: GetBuilder<LoginControllerImp>(
  //           builder: (loginControllerImp) => HandlingDataRequest(
  //               statusRequest: loginControllerImp.statusRequest,
  //               widget: Container(
  //         padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
  //         // padding: EdgeInsets.all(5),
  //         decoration: BoxDecoration(
  //           image: DecorationImage(
  //               fit: BoxFit.fill,
  //               image: AssetImage(
  //                 "asset/images/back.jpg",
  //               )),
  //         ),
  //         // alignment: Alignment.center,

  //         child: Form(
  //           // key: loginControllerImp.loginFormState,
  //           child: ListView(
  //             children: [
  //               CustomLogoForm(
  //                   image: 'asset/images/l1.png',
  //                   address: "Welcome Back!",
  //                   sign: "Log in to your accont"),
  //               Column(
  //                 children: [
  //                   SizedBox(
  //                     width: screenWidth / 2.7,
  //                     child: CustomTextForm(
  //                       keyboard: TextInputType.emailAddress,
  //                       isNumber: false,
  //                       valid: (val) {
  //                         return validInput(val!, 6, 100, "email");
  //                       },
  //                       mycontroller: loginControllerImp.email,
  //                       hintText: "Enter your Email",
  //                       iconData: Icons.email_outlined,
  //                       // mycontroller: mycontroller
  //                     ),
  //                   ),
  //                   SizedBox(
  //                     height: screenHeight / 15,
  //                   ),
  //                   //  Obx(() =>
  //                   SizedBox(
  //                     width: screenWidth / 2.7,
  //                     child: CustomTextForm(
  //                       obscuretext: loginControllerImp.isshowpassword,
  //                       onTapIcon: () {
  //                         loginControllerImp.showPassword();
  //                         // icon1: Icon(Icons.remove_red_eye_rounded,
  //                         // color:Colors.red,  );
  //                       },
  //                       icon2: Icons.remove_red_eye_outlined,
  //                       isNumber: false,
  //                       valid: (val) {
  //                         return validInput(val!, 5, 30, "password");
  //                       },
  //                       mycontroller: loginControllerImp.password,
  //                       hintText: "Password",
  //                       iconData: Icons.lock_outline_rounded,
  //                       // mycontroller: mycontroller
  //                     ),
  //                   ),
  //                   // ),
  //                   SizedBox(
  //                     height: screenHeight / 17,
  //                   ),
  //                   InkWell(
  //                     onTap: () {
  //                       loginControllerImp.goToForgetPassword();
  //                     },
  //                     child: MyText(
  //                       text: "Forget your password?",
  //                       textAlign: TextAlign.center,
  //                       color: textcolor,
  //                       fontSize: 20,
  //                       fontWeight: FontWeight.w600,
  //                       fontfamily: Myriad,
  //                     ),
  //                   ),
  //                   SizedBox(
  //                     height: screenHeight / 15,
  //                   ),
  //                   SizedBox(
  //                     width: screenWidth / 2.7,
  //                     height: screenHeight / 12,
  //                     child: CustomButtonAuth(
  //                       text: "Sign in",
  //                       onPressed: () {
  //                         loginControllerImp.login();
  //                       },
  //                       color: mainColor2,
  //                     ),
  //                   ),
  //                   SizedBox(
  //                     height: screenHeight / 17,
  //                   ),
  //                   CustomTextSign(
  //                       textone: "You don't have an account?  ",
  //                       texttwo: "Sign Up",
  //                       onTap: () {
  //                         loginControllerImp.goToSignUp();
  //                       }),
  //                 ],
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //       ),
  //         ),
  //     ),
  //   );
  // }
);
}
}