// ignore_for_file: prefer_const_constructors, must_be_immutable, override_on_non_overriding_member, unused_import

import 'package:baby_lc/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../components/auth/CustomButtomAuth.dart';
import '../../../../components/auth/customlogo.dart';
import '../../../../components/auth/customtextform.dart';
import '../../../../components/auth/customtextsign.dart';
import '../../../../core/functions/localization/validinput.dart';
import '../controllers/forget_password_controller.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ForgetPasswordControllerImp controller =
    //     Get.put(ForgetPasswordControllerImp());
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      // body: Container(
      //   padding: EdgeInsets.all(5),
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //         fit: BoxFit.fill,
      //         image: AssetImage(
      //           "asset/images/back.jpg",
      //         )),
      //   ),
      //   // alignment: Alignment.center,

      //   child: Form(
      //     key: controller.FogetformState,
      //     child: ListView(
      //       children: [
      //         CustomTextTitle(
      //             title: "Forget Password",
      //             sign: "Check Email",
      //             body: "Enter your email to check and reset your password"),
      //         Column(
      //           children: [
      //             SizedBox(
      //               height: screenHeight / 12,
      //             ),
      //             SizedBox(
      //               width: screenWidth / 2.7,
      //               // height: screenHeight / 12,
      //               child: CustomTextForm(
      //                 keyboard: TextInputType.emailAddress,
      //                 isNumber: false,
      //                 valid: (val) {
      //                   return validInput(val!, 6, 100, "email");
      //                 },
      //                 mycontroller: controller.email,
      //                 hintText: "Enter your Email",
      //                 iconData: Icons.email_outlined,
      //               ),
      //             ),
      //             SizedBox(
      //               height: screenHeight / 15,
      //             ),
      //             SizedBox(
      //               width: screenWidth / 2.7,
      //               // height: screenHeight / 12,
      //               child: CustomButtonAuth(
      //                 text: "Check",
      //                 onPressed: () {
      //                   controller.goToVerifyCode();
      //                 },
      //                 color: mainColor2,
      //               ),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    
    );
  }
}
