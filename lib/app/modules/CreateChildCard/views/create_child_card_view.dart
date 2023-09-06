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
import '../../home/views/home_view.dart';
import '../controllers/create_child_card_controller.dart';

class CreateChildCardView extends  StatelessWidget {
 
  CreateChildCardView({Key? key}) : super(key: key);
  CreateChildCardController createChildCardController =
      Get.put(CreateChildCardController());
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
                      hintText: 'Child-Name',
                      iconData: Icons.boy_outlined,
                      // mycontroller: createChildCardController.nameController,
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
                      hintText: 'Region',
                      iconData: Icons.maps_home_work_outlined,
                      // mycontroller: createChildCardController.regionController,
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
                      hintText: 'doses-Number',
                      iconData: Icons.format_list_numbered_rounded,
                      // mycontroller: createChildCardController.dosesController,
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
                      hintText: 'Center-Phone',
                      iconData: Icons.phone,
                      // mycontroller:  createChildCardController.centerNumberController,
                      valid: (val) {
                        return validInput(val!, 9, 100, "phone");
                      },
                    ),
                  ),
                  SizedBox(
                    height: screenHeight / 15,
                  ),
                  SizedBox(
                    width: screenWidth / 2.7,
                    child: CustomTextForm(
                      keyboard: TextInputType.datetime,
                      hintText: createChildCardController.selectedBirthDate.value != null
                          ? createChildCardController.selectedBirthDate.value
                              .toString()
                              .split(' ')[0]
                          : 'Select Birth Date',
                      iconData: Icons.calendar_month_outlined,
                      // mycontroller:  createChildCardController.birthDateController,
                      valid: (val) {
                        return validInput(val!, 8, 10, "firstname");
                      },
                      onTapPreIcon: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime.now(),
                          builder: (BuildContext context, Widget? child) {
                            return Theme(
                              data: ThemeData.light().copyWith(
                                colorScheme: ColorScheme.light(
                                  primary:
                                      mainColor2, // Change the primary color
                                  onPrimary:
                                      textcolor, // Change the text color
                                ),
                                textButtonTheme: TextButtonThemeData(
                                  style: TextButton.styleFrom(
                                    foregroundColor: mainColor1, // Change the button text color
                                  ),
                                ),
                              ),
                              child: child!,
                            );
                          },
                        ).then((selectedDate) {
                          if (selectedDate != null) {
                            createChildCardController
                                .selectBirthDate(selectedDate);
                          }
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: screenHeight / 15,
                  ),
                  DropDownButton(
                    list: createChildCardController.genderOptions,
                    hint: 'Selet the Gender',
                    // icon: Icon(Icons.bi,),
                  ),
                  SizedBox(
                    height: screenHeight / 15,
                  ),
                  SizedBox(
                    width: screenWidth / 2.7,
                    child: CustomTextForm(
                      keyboard: TextInputType.text,
                      hintText: 'Status_leaky',
                      // iconData: Icons.domain_add_outlined,
                      // mycontroller:   createChildCardController.StatusLeakyController,
                      valid: (val) {
                        return validInput(val!, 1, 100, "firstname");
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
                          text: "Save and Create more cards",
                          color: mainColor2,
                          onPressed: () {
                            Get.off(CreateChildCardView());
                            return showTopSnackBar(
                              Overlay.of(context),
                              CustomSnackBar.success(
                                message:
                                    "Good job, A new Child Card is successfully added",
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
                          text: "Save and Exit",
                          color: mainColor2,
                          onPressed: () {
                            Get.off(HomeView());
                          },
                        ),
                      )
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
