// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, unused_import

import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/component .dart';
import '../my_text.dart';

class CustomTextSign extends StatelessWidget {
  final String textone;
  final String texttwo;
  final void Function() onTap;
  const CustomTextSign({
    Key? key,
    required this.textone,
    required this.texttwo,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyText(
          text: textone,
          // textAlign: TextAlign.center,
          color: textcolor,
          fontSize: 25,
          fontWeight: FontWeight.bold,
          fontfamily: Myriad,
        ),
        InkWell(
          onTap: onTap,
          child: MyText(
            text: texttwo,
            textAlign: TextAlign.center,
            color: YellowColor,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontfamily: Myriad,
          ),
        ),
      ],
    );
  }
}
