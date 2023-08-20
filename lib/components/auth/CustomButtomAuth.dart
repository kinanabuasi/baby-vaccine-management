// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/component .dart';
import '../my_text.dart';

class CustomButtonAuth extends StatelessWidget {
  final String text;
  final Color color;
  final void Function()? onPressed;

  const CustomButtonAuth(
      {Key? key, required this.text, this.onPressed, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 3,
      minWidth: 500,
      height: 60,
      onPressed: onPressed,
      child: Center(
        child: MyText(
          text: text,
          color: white,
          fontSize: 25,
          fontWeight: FontWeight.w800,
          fontfamily: Myriad,
        ),
      ),
      
      color: color,
      // textColor: Colors.white,
    );
  }
}
