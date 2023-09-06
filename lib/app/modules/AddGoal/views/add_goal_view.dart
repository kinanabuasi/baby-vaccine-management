// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, must_be_immutable, duplicate_import, unused_import, sized_box_for_whitespace, unused_local_variable, avoid_print

import 'package:baby_lc/app/modules/home/views/home_view.dart';
import 'package:baby_lc/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import '../../../../components/auth/CustomButtomAuth.dart';
import '../../../../components/auth/customtextform.dart';
import '../../../../components/text_form/my_text_form_field.dart';
import '../../../../core/functions/localization/validinput.dart';
import '../../../routes/app_pages.dart'; 
import '../controllers/add_goal_controller.dart';

class AddGoalView extends GetView<AddGoalController> {
  const AddGoalView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    print(screenHeight);
    print(screenWidth);
    return Scaffold(
      body: LayoutBuilder(
          // body: SafeArea(
          builder: (context, contraints) {
        return ListView(
          children: [
            Container(
              // width: contraints.maxWidth,
              // height: contraints.maxHeight,
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
                      keyboard: TextInputType.name,
                      hintText: 'Count_children',
                      iconData: Icons.domain_add_outlined,
                      // mycontroller: addingCenterControllerImp.nameController,
                      valid: (val) {
                        return validInput(val!, 1, 50, "firstname");
                      },
                    ),
                  ),
               
                SizedBox(
                    height: screenHeight / 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: screenWidth / 4,
                        child: CustomButtonAuth(
                          text: "Save and Continue",
                          color: mainColor2,
                          onPressed: () {
                            //  addingCenterControllerImp.GoToHomePage(context);
                            Get.offNamed(Routes.HOME_VIEW);
                          },
                        ),
                      ),

                      SizedBox(
                        width: screenWidth / 4,
                        child: CustomButtonAuth(
                          text: "Cancel",
                          color: mainColor2,
                          onPressed: () {
                            Get.off(HomeView());
                          },
                        ),
                      ),
                      SizedBox(
                    height: screenHeight / 2,
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
