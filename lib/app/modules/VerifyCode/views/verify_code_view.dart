// ignore_for_file: prefer_const_constructors, must_be_immutable, override_on_non_overriding_member, unused_import, prefer_interpolation_to_compose_strings, avoid_print, unused_label

import 'package:baby_lc/app/modules/VerifyCode/controllers/VerifyCode_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import '../../../../components/auth/CustomButtomAuth.dart';
import '../../../../components/auth/customlogo.dart';
import '../../../../components/auth/customtextform.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../../../constants/colors.dart';
import '../../ResetPassword/views/reset_password_view.dart';

class VerifyCodeView extends StatelessWidget {
  const VerifyCodeView({Key? key}) : super(key: key);
   @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    // VerifyCodeControllerImp controller = Get.put(VerifyCodeControllerImp());
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

      //   child: ListView(
      //     children: [
      //       CustomTextTitle(
      //           title: "Verifiction Code",
      //           sign: "Check Code",
      //           body:
      //               "Please Enter The Digit Code Sent To kinanabuasi.KA@gmail.com"),
      //       OtpTextField(
      //         keyboardType: TextInputType.number,
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         // fillColor: Colors.white,
      //         // enabledBorderColor: Colors.white,
      //         textStyle: TextStyle(
      //           color: Colors.white,
      //         ),
      //         borderRadius: BorderRadius.circular(15),
      //         numberOfFields: 5,
      //         borderColor: mainColor2,
      //         //set to true to show as box or false to show as dash
      //         showFieldAsBox: true,
      //         fieldWidth: 50,
      //         //runs when a code is typed in
      //         onCodeChanged: (String code) {
      //           //handle validation or checks here
      //         },

      //         //runs when every textfield is filled
      //         onSubmit: (String verificationCode) {
      //           showTopSnackBar(
      //             context as OverlayState,
      //             CustomSnackBar.success(
      //               backgroundColor: mainColor2,
      //               message:
      //                   "verification is successful",
      //             ),
      //           );
      //                controller.goToResetPassword() ; 
      //                 // Get.to(ResetPasswordView());

              
      //         },
      //         // end onSubmit
              
      //       ),
      //       SizedBox(
      //          height: screenHeight / 15,
      //         ),
      //         SizedBox(
      //            width: screenWidth / 2.7,
      //           child: CustomButtonAuth(
      //             text: "Save",
      //             onPressed: () { 
      //                Get.to(ResetPasswordView());
      //             },
                  
      //             color: mainColor2,
      //           ),
      //         ),
      //     ],
      //   ),
      // ),
    
    );
  }
}
