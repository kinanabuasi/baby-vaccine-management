// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, must_be_immutable, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import '../../../../components/auth/CustomButtomAuth.dart';
import '../../../../components/auth/customtextform.dart';
import '../../../../components/drop_down.dart';
import '../../../../constants/colors.dart';
import '../../../../core/functions/localization/validinput.dart';
import '../../AddGoal/views/add_goal_view.dart';
import '../../home/views/home_view.dart'; 
import '../controllers/register_nurse_controller.dart';

class RegisterNurseView extends GetView<RegisterNurseController> {
   RegisterNurseView({Key? key}) : super(key: key);
   RegisterNurseController registerNurseController = Get.put(RegisterNurseController());
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: LayoutBuilder(
          // body: SafeArea(
          builder: (context, contraints) {
        return ListView(
          children: [
            Container(
              // width: screenWidth,
              // height: screenHeight, 5
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "asset/images/vaccine.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: screenHeight / 15,
                  ),
                  SizedBox(
                    width: screenWidth / 2.7,
                    child: CustomTextForm(
                      keyboard: TextInputType.text,
                      hintText: 'first_name',
                      iconData: Icons.woman_outlined,
                      // mycontroller:reateChildCardController.nameController,
                      valid: (val) {
                        return validInput(val!, 1, 50, "firstname");
                      },
                    ),
                  ),
                  SizedBox(
                    height: screenHeight / 15,
                  ),
                  SizedBox(
                    width: screenWidth / 2.7,
                    child: CustomTextForm(
                      keyboard: TextInputType.text,
                      hintText: 'last_name',
                      // iconData: Icons.maps_home_work_outlined,
                      // mycontroller:reateChildCardController.regionController,
                      valid: (val) {
                        return validInput(val!, 1, 50, "firstname");
                      },
                    ),
                  ),
                  
                  SizedBox(
                    height: screenHeight / 15,
                  ),
                  SizedBox(
                    width: screenWidth / 2.7,
                    child: CustomTextForm(
                      keyboard: TextInputType.text,
                      hintText: 'national_ID',
                      iconData: Icons.format_list_numbered_rounded,
                      // mycontrollercreateChildCardController.dosesController,
                      valid: (val) {
                        return validInput(val!, 1, 50, "phone");
                      },
                    ),
                  ),
                  SizedBox(
                    height: screenHeight / 15,
                  ),
                
                  SizedBox(
                    width: screenWidth / 2.7,
                    child: CustomTextForm(
                      keyboard: TextInputType.text,
                      hintText: 'phone_number',
                      iconData: Icons.phone,
                      // mycontroller:createChildCardController.centerNumberController,
                      valid: (val) {
                        return validInput(val!, 9, 100, "phone");
                      },
                    ),
                  ),
                  SizedBox(
                    height: screenHeight / 15,
                  ),
                 
                  // DropDownButton(
                  //   list:registerNurseController.centerOptions,
                  //   hint: 'Selet the Gender',
                  //   // icon: Icon(Icons.bi,),
                  // ),
                
                  SizedBox(
                    height: screenHeight / 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: screenWidth / 4,
                        child: CustomButtonAuth(
                          text: "Save and Add more Nurses",
                          color: mainColor2,
                          onPressed: () {
                            Get.off(RegisterNurseView());
                            return showTopSnackBar(
                              Overlay.of(context),
                              CustomSnackBar.success(
                                message:
                                    "Good job, A new Nurse is successfully added",
                                backgroundColor: mainColor2,
                                textStyle: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: textcolor,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        width: screenWidth / 4,
                        child: CustomButtonAuth(
                          text: "Skip Now",
                          color: mainColor2,
                          onPressed: () {
                            Get.off(AddGoalView());
                          },
                        ),
                      ),
                      SizedBox(
                    height: screenHeight / 5,
                  ),
                    ],
                  )
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}
