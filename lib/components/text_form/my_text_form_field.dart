// ignore_for_file: must_be_immutable, non_constant_identifier_names

import 'package:baby_lc/constants/component%20.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';

// import '../../constants/fonts.dart';

class MyTextFormField extends StatelessWidget {
  final Function validator;
  final String hintText;
  Color fillColor;
  Color textColor;
  Color focusedBorderColor;
  Color enabledBorderColor;
  TextEditingController? controller;
  bool obsecure;
  Widget? prefixIcon;
  bool multiLines;
  TextInputType KeyboardType;
  String? fontFamily;

  MyTextFormField({
    super.key,
    required this.validator,
    required this.hintText,
    this.prefixIcon,
    this.obsecure = false,
    this.multiLines = false,
    this.fillColor = white,
    this.textColor = textcolor,
    this.focusedBorderColor = mainColor2,
    this.enabledBorderColor = mainColor2,
    this.controller,
    this.KeyboardType = TextInputType.text,
    this.fontFamily = Myriad,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // maxLines: multiLines ? 4 : 1,
      // obscureText: obsecure,
      // controller: controller,
      // cursorColor: mainColor1,
      maxLength: 30,
      style: TextStyle(color: textColor, fontFamily: fontFamily),
      keyboardType: KeyboardType,
      validator: (value) => validator(value),
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        fillColor: fillColor,
        hintText: hintText,
        hintStyle: const TextStyle(
            color: mainColor2,
            fontSize: 15,
            fontWeight: FontWeight.w500,
            fontFamily: Myriad),
        filled: true,
        border: InputBorder.none,

        // border: UnderlineInputBorder(
        //     borderSide: const BorderSide(color: mainColor1),
        //     borderRadius: BorderRadius.circular(10)),
        // enabledBorder: UnderlineInputBorder(
        //     borderSide: BorderSide(color: enabledBorderColor),
        //     borderRadius: BorderRadius.circular(10)),
        // focusedBorder: UnderlineInputBorder(
        //     borderSide: BorderSide(color: focusedBorderColor),
        //     borderRadius: BorderRadius.circular(10)),
        // errorBorder: UnderlineInputBorder(
        //     borderSide: const BorderSide(color: Colors.red),
        //     borderRadius: BorderRadius.circular(10)),
        // focusedErrorBorder: UnderlineInputBorder(
        //     borderSide: const BorderSide(color: Colors.red),
        // borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
