// ignore_for_file: prefer_const_constructors, must_be_immutable, override_on_non_overriding_member, unrelated_type_equality_checks, body_might_complete_normally_nullable, unused_import, unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import '../../../../components/auth/CustomButtomAuth.dart';
import '../../../../components/auth/customtextform.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart'; 
import '../../../../constants/colors.dart';
import '../../../../core/functions/localization/validinput.dart';
import '../controllers/resetpassword_controller.dart';


class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ResetPasswordControllerImp controller = Get.put(ResetPasswordControllerImp());
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      // body: Container(
      //   padding: EdgeInsets.all(5),
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //         fit: BoxFit.fill,
      //         image: AssetImage(
      //          "asset/images/back.jpg",
      //         )),
      //   ),
      //   // alignment: Alignment.center,

      //   child: Form(
      //     key: controller.ResetformState,
      //     child: ListView(
      //       children: [
      //         CustomTextTitle(
      //             title: "Reset Password",
      //             sign: "New Password",
      //             body: "Please Enter A New Password "),
              
      //         // Obx(() =>
      //          SizedBox(
      //                   width: screenWidth / 2.7,
      //                   child: 
      //                 CustomTextForm(
      //                   obscuretext: controller.isshowpassword,
      //                   onTapIcon: () {
      //                     controller.showpassword();
      //                   },
      //             isNumber: false,
      //             valid: (val) {
      //               return validInput(val!, 5, 30, "password");
      //             },
      //             mycontroller: controller.password,
      //             hintText: "Enter a new Password",
      //             iconData: Icons.lock_outline_rounded,
      //             icon2: Icons.remove_red_eye_outlined,
      //           ),
      //         ),
      //         // ),
      //         SizedBox(
      //          height: screenHeight / 15,
      //         ),
      //       //  Obx(() =>
      //                  SizedBox(
      //                   width: screenWidth / 2.7,
      //                   child:CustomTextForm(
      //             isNumber: false,
      //             obscuretext: controller.isshowpassword,
      //                   onTapIcon: () {
      //                     controller.showpassword();
      //                   },
      //             valid: (val) {
      //               if (val!.isEmpty) {
      //                     return "can't be Empty";
      //                   }
      //                   if ( val != controller.password.text) {
                         
      //                     return "the two passwords don't match";
      //                     // return null;
      //                   }
      //             },
      //             mycontroller: controller.repassword,
      //             hintText: "Re Enter the Password",
      //             iconData: Icons.lock_reset_rounded,
      //             icon2: Icons.remove_red_eye_outlined,
      //           ),
      //         ),
      //         // ),
      //         SizedBox(
      //          height: screenHeight / 15,
      //         ),
      //         SizedBox(
      //            width: screenWidth / 2.7,
      //           child: CustomButtonAuth(
      //             text: "Save",
      //             onPressed: () { 
      //                controller.resetpassword(context); 
      //             },
                  
      //             color: mainColor2,
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    
    );
  }
}
