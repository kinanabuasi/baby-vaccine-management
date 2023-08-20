// ignore_for_file: prefer_const_constructors, must_be_immutable, avoid_unnecessary_containers, unused_import, unused_local_variable

import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/component .dart';
import '../my_text.dart';

class CustomLogoForm extends StatelessWidget {
  final String image;
  final String address;
  final String sign;
// final String assetName = 'online-shop-logo.jpg';
// final String svg = SvgPicture.asset('online-shop-logo.jpg'
// ) as String;
  TextEditingController? mycontroller;
  CustomLogoForm(
      {Key? key,
      required this.image,
      required this.address,
      required this.sign,
      this.mycontroller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height; 
    final double itemMaxSize =
        screenWidth * 0.5; // Adjust the maximum size as needed
    return Column(
      children: [
         SizedBox(
            height: screenHeight/20,
          ),
        Container(
          width: screenWidth/4,
          height: screenHeight/4,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage(
                image,
              ),

              // width: 1000,height:1000,scale: 0.60,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        MyText(
          text: address,
          textAlign: TextAlign.center,
          color: textcolor,
          fontSize: 25,
          fontWeight: FontWeight.bold,
          fontfamily: Arial,
        ),

        SizedBox(
          height: 10,
        ),
        MyText(
          text: sign,
          textAlign: TextAlign.center,
          color: textcolor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontfamily: Arial,
        ),

        SizedBox(
          height: 30,
        ),
      ],
      // ),
    );
  }
}
