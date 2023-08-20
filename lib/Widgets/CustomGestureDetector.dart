// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import, must_be_immutable, unused_local_variable, avoid_unnecessary_containers, sized_box_for_whitespace, use_key_in_widget_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:baby_lc/Widgets/RoundedIconButton.dart';
import 'package:baby_lc/components/my_text.dart';
import 'package:baby_lc/components/text_form/my_text_form_field.dart';
import 'package:baby_lc/constants/colors.dart';

import '../../../../Widgets/FlashContainer.dart';

class CustomGestureDetector extends GetWidget {
  final isHovered = false.obs;
  final Icon icon;
  final Function() onTap;
  String iconName;  

  CustomGestureDetector({
    required this.icon,
    required this.onTap,
    required this.iconName,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => isHovered.value = true,
      onHover: (_) => isHovered.value = true,
      onExit: (_) => isHovered.value = false,
      cursor: SystemMouseCursors.click, // Use hand cursor when hovering
      child: GestureDetector(
        onTap: onTap,
        child: Tooltip(
          message: iconName,
          child: Obx(
            () => AnimatedContainer(
              duration: Duration(milliseconds: 100),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isHovered.value ? Colors.yellow : white,
              ),
              child: icon,
            ),
          ),
        ),
      ),
    );
  }
}

