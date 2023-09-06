// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import, must_be_immutable, unused_local_variable, avoid_unnecessary_containers, sized_box_for_whitespace, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:baby_lc/components/my_text.dart';
import 'package:baby_lc/components/text_form/my_text_form_field.dart';
import 'package:baby_lc/constants/colors.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class App {
  static Succ(String msg,BuildContext context){
    return showTopSnackBar(
      Overlay.of(context),
      CustomSnackBar.success(
        message:
        msg,
      ),
    );
  }

  static Err(String msg,BuildContext context){
    return showTopSnackBar(
      Overlay.of(context),
      CustomSnackBar.error(
        message:
        msg,
      ),
    );
  }

  static Loading(){
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}