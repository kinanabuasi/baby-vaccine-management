// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_local_variable
// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:baby_lc/constants/component%20.dart';

import '../constants/colors.dart';

class DropDownButton extends StatelessWidget {
  DropDownButton({
    Key? key,
    required this.list,
    required this.hint,
    this.icon,
  }) : super(key: key);

  final List list;
  final String hint;
  String? value;
  Icon? icon;
  

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      width:screenWidth/2.7, 
      child: DropdownButtonFormField(
        decoration: InputDecoration( 
            prefixIcon: icon,
            fillColor: white,
            hintText: hint, //"Product Type",
            hintStyle:  TextStyle(
                color: textcolor,
                fontSize: 15,
                fontWeight: FontWeight.w500,
                fontFamily: Myriad),
            filled: true,
            border: UnderlineInputBorder(
                borderSide: const BorderSide(color: mainColor2),
                borderRadius: BorderRadius.circular(16)),
            enabledBorder: UnderlineInputBorder(
                borderSide: const BorderSide(color: mainColor2),
                borderRadius: BorderRadius.circular(16)),
            focusedBorder: UnderlineInputBorder(
                borderSide: const BorderSide(color: mainColor1),
                borderRadius: BorderRadius.circular(16)),
            errorBorder: UnderlineInputBorder(
                borderSide: const BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(16)),
            focusedErrorBorder: UnderlineInputBorder(
                borderSide: const BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(16))),
        items: list.map((item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(item),
          );
        }).toList(),
        value: value,
        onChanged: (value) {
          this.value = value!;
        },
      ),
    );
  }
}
