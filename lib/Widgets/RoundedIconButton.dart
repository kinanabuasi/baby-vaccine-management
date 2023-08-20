// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import, must_be_immutable, unused_local_variable, avoid_unnecessary_containers, sized_box_for_whitespace, use_key_in_widget_constructors, sort_child_properties_last, prefer_const_constructors_in_immutables

import 'package:baby_lc/components/my_text.dart';
import 'package:baby_lc/constants/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Widgets/FlashContainer.dart';

class RoundedIconButton extends StatelessWidget {
  final IconData icon;
  // final Color color;
  final VoidCallback onPressed;

  RoundedIconButton({
    required this.icon,
    // required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        // color: color, // Button color
        child: InkWell(
          splashColor: Colors.white, // Splash color
          child: SizedBox(
            width: 56,
            height: 56,
            child: Icon(
              icon,
              color: YellowColor, // Icon color
              size: 40,
            ),
          ),
          onTap: onPressed,
        ),
      ),
    );
  }
}
