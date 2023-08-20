// ignore_for_file: prefer_const_constructors, unused_local_variable, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../components/auth/customtextsign.dart';
import 'package:baby_lc/components/auth/CustomButtomAuth.dart';
import 'package:baby_lc/components/auth/customlogo.dart';
import 'package:baby_lc/core/functions/alertexitapp.dart';
import '../../../../components/auth/customtextform.dart';
import '../../../../constants/colors.dart';
import '../../../../core/class/crud.dart';
import '../../../../core/functions/localization/validinput.dart';
import '../../HandlingData/views/handling_data_view.dart';
import '../controllers/signup_controller.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp ControllerImp = Get.put(SignUpControllerImp());
    final Crud crud = Get.put(Crud());
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    final double itemMaxSize =
        screenWidth * 0.5; // Adjust the maximum size as needed
    return Scaffold(
      body: WillPopScope(
        // key:formState;
        onWillPop: alertExitApp,
        child: 
         GetBuilder<SignUpControllerImp>(
          // init:SignUpControllerImp(),
            builder: (signUpControllerImp) =>
                 HandlingDataRequest(statusRequest: signUpControllerImp.statusRequest,
                 widget:
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  "asset/images/back.jpg",
                )),
          ),
          // alignment: Alignment.center,

          // child: Form(
            // key:signUpControllerImp.signUpFormState,
            child: ListView(
              //crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomLogoForm(
                    image: 'asset/images/l1.png',
                    address: "Welcome !",
                    sign: "Create your account"),
                Column(
                  children: [
                    SizedBox(
                      width: screenWidth / 2.7,
                      child: CustomTextForm(
                        keyboard: TextInputType.name,
                        isNumber: false,
                        valid: (val) {
                          return validInput(val!, 3, 20, "firstname");
                        },
                        mycontroller:signUpControllerImp.username,
                        hintText: "Enter your Full name",
                        iconData: Icons.person,
                        // mycontroller: mycontroller
                      ),
                    ),
                    
                    SizedBox(
                      height: screenHeight / 15,
                    ),
                    SizedBox(
                      width: screenWidth / 2.7,
                      child: CustomTextForm(
                        keyboard: TextInputType.emailAddress,
                        isNumber: false,
                        valid: (val) {
                          return validInput(val!, 6, 100, "email");
                        },
                        mycontroller:signUpControllerImp.email,
                        hintText: "Enter your Email",
                        iconData: Icons.email_outlined,
                        // mycontroller: mycontroller
                      ),
                    ),
                     SizedBox(
                      height: screenHeight / 15,
                    ),
                    SizedBox(
                      width: screenWidth / 2.7,
                      child: CustomTextForm(
                        keyboard: TextInputType.phone,

                        isNumber: true,
                        valid: (val) {
                          return validInput(val!, 9, 16, "phone");
                        },
                        mycontroller:signUpControllerImp.phoneNumber,
                        hintText: "Enter your Phone number",
                        iconData: Icons.phone_android,
                        // mycontroller: mycontroller
                      ),
                    ),
                    SizedBox(
                      height: screenHeight / 15,
                    ),
                  //  Obx(() =>
                       SizedBox(
                        width: screenWidth / 2.7,
                        child: CustomTextForm(
                          keyboard: TextInputType.visiblePassword,
                          isNumber: false,
                          valid: (val) {
                            return validInput(val!, 5, 30, "password");
                          },
                          // obscuretext:signUpControllerImp.,
                          // onTapIcon: () {
                            //signUpControllerImp.showpass();
                          // },
                          mycontroller:signUpControllerImp.password,
                          hintText: "Enter your Password",
                          iconData: Icons.lock_outline_rounded,
                          icon2: Icons.remove_red_eye_outlined,
                          // mycontroller: mycontroller
                        ),
                      ),
                       SizedBox(
                      height: screenHeight / 15,
                    ),
                  //  Obx(() =>
                       SizedBox(
                        width: screenWidth / 2.7,
                        child: CustomTextForm(
                          keyboard: TextInputType.visiblePassword,
                          isNumber: false,
                          valid: (val) {
                            return validInput(val!, 5, 30, "username");
                          },
                          // obscuretext:signUpControllerImp.,
                          // onTapIcon: () {
                            //signUpControllerImp.showpass();
                          // },
                          mycontroller:signUpControllerImp.region,
                          hintText: "Enter your region",
                          iconData: Icons.map,
                          // icon2: Icons.remove_red_eye_outlined,
                          // mycontroller: mycontroller
                        ),
                      ),
                       SizedBox(
                      height: screenHeight / 15,
                    ),
                  //  Obx(() =>
                       SizedBox(
                        width: screenWidth / 2.7,
                        child: CustomTextForm(
                          keyboard: TextInputType.visiblePassword,
                          isNumber: false,
                          valid: (val) {
                            return validInput(val!, 5, 30, "username");
                          },
                          // obscuretext:signUpControllerImp.,
                          // onTapIcon: () {
                            //signUpControllerImp.showpass();
                          // },
                          mycontroller:signUpControllerImp.addressTown,
                          hintText: "Enter your addressTown",
                          iconData: Icons.map_outlined,
                          // mycontroller: mycontroller
                        ),
                      ),
                       SizedBox(
                      height: screenHeight / 15,
                    ),
                  //  Obx(() =>
                       SizedBox(
                        width: screenWidth / 2.7,
                        child: CustomTextForm(
                          keyboard: TextInputType.visiblePassword,
                          isNumber: false,
                          valid: (val) {
                            return validInput(val!, 5, 30, "username");
                          },
                          // obscuretext:signUpControllerImp.,
                          // onTapIcon: () {
                            //signUpControllerImp.showpass();
                          // },
                          mycontroller:signUpControllerImp.detailedAddress,
                          hintText: "Enter your detailedAddress",
                          iconData: Icons.map_sharp,
                          // mycontroller: mycontroller
                        ),
                      ),
                    // ),
                    // SizedBox(
                    //   height: screenHeight / 15,
                    // ),
                    // // Obx(() => 
                    //   SizedBox(
                    //     width: screenWidth / 2.7,
                    //     child: CustomTextForm(
                    //       // obscuretext:signUpControllerImp.isshowpass,
                    //       // onTapIcon: () {
                    //       //  signUpControllerImp.showpass();
                    //       // },
                    //       isNumber: false,
                    //       valid: (val) {
                    //         if (val!.isEmpty) {
                    //           return "can't be Empty";
                    //         }
                    //         if (val !=signUpControllerImp.password.text) {
                    //           return "the two passwords don't match";
                    //           // return null;
                    //         }
                    //         return null;
                    //         // return null;
                    //       },
                    //       mycontroller:signUpControllerImp.password,
                    //       hintText: "Confirm your Password",
                    //       iconData: Icons.lock_reset_rounded,
                    //       icon2: Icons.remove_red_eye_outlined,
                    //       // mycontroller: mycontroller
                    //     ),
                    //   ),
                    // // ),
                   
                    SizedBox(
                      height: screenHeight / 15,
                    ),
                    SizedBox(
                      width: screenWidth / 2.7,
                      height: screenHeight/12,
                      child: CustomButtonAuth(
                        text: "Sign up",
                        color: mainColor2,
                        onPressed: () {
                         signUpControllerImp.signUp();
                        },
                      ),
                    ),
                    SizedBox(
                      height: screenHeight / 15,
                    ),
                    // CustomTextSign(
                    //     textone: "You have an account? ",
                    //     texttwo: "Sign In",
                    //     onTap: () {
                    //      signUpControllerImp.goToSignIn();
                    //     }
                    //     ),
                  ],
                ),
              ],
            ),
        //   ),
        ),
        ),
          ),
      ),
    );
  }
}
