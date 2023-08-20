// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, must_be_immutable, sort_child_properties_last, unrelated_type_equality_checks

import 'package:flutter/material.dart';

import 'package:baby_lc/constants/colors.dart';

import '../../constants/component .dart';
import '../my_text.dart';

class CustomTextForm extends StatelessWidget {
  final String hintText;
  final IconData iconData;
  final TextEditingController? mycontroller;
  final String? Function(String?)? valid;
  bool? isNumber;
  final bool? obscuretext;
  final void Function()? onTapIcon;
  final void Function()? onTapPreIcon;
  IconData? icon2;
  TextInputType? keyboard;
  CustomTextForm({
    Key? key,
    required this.hintText,
    required this.iconData,
    this.mycontroller,
    this.valid,
    this.isNumber,
    this.obscuretext,
    this.onTapIcon,
    this.onTapPreIcon,
    this.icon2,
    this.keyboard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      //  autofocus = true,
      keyboardType: keyboard,
      // isNumber ? TextInputType.emailAddress : TextInputType.text,
      controller: mycontroller,
      obscureText: obscuretext == null || obscuretext == false ? false : true,
      style: TextStyle(color: mainColor2),
      validator: valid,

      // cursorColor: Colors.white,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: hintText,

        floatingLabelBehavior: FloatingLabelBehavior.always,

        contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),

        prefixIcon: InkWell(
          child: Icon(
            iconData,
            color: onTapPreIcon == true ? mainColor2 : mainColor1,
          ),
          onTap: onTapPreIcon,
          
        ),

        suffixIcon: InkWell(
          onTap: onTapIcon,
          child: Icon(
            icon2,
            // color:Theme.of(context).primaryColorLight,
            // ),
            color: onTapIcon == true ? mainColor2 : mainColor1,
          ),

          // color:controller.showpass() ? Colors.blue : Colors.red,
        ),

        // suffixIconColor: Colors.blue,
        prefixIconColor: mainColor1,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}

class CustomTextTitle extends StatelessWidget {
  const CustomTextTitle(
      {Key? key, required this.title, required this.sign, required this.body})
      : super(key: key);
  final String title;
  final String sign;
  final String body;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyText(
          text: title,
          color: white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontfamily: Myriad,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 40,
        ),
        MyText(
          text: sign,
          color: mainColor1,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontfamily: Myriad,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20,
        ),
        MyText(
          text: body,
          color: textcolor,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontfamily: Myriad,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
