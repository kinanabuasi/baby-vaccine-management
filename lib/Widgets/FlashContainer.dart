// ignore_for_file: public_member_api_docs, sort_constructors_first, deprecated_member_use
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import, must_be_immutable, unused_local_variable, avoid_unnecessary_containers, sized_box_for_whitespace, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'package:baby_lc/components/my_text.dart';
import 'package:baby_lc/constants/colors.dart';

class FlashContainerWidget extends StatelessWidget {
  final FlashContainerController controller = Get.put(FlashContainerController());
  final Color color;
  final String text;
  final Color colorText;
  final Icon icon;

  FlashContainerWidget({
    Key? key,
    required this.color,
    required this.text,
    required this.colorText,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        controller.togglePressed();
      },
      onPanUpdate: (details) {
        controller.updatePosition(details.delta);
      },
      child: Obx(
        () => Container(
          padding: EdgeInsets.all(20),
          width: 600,
          height: 300,
          decoration: BoxDecoration(
            color: controller.isPressed.value
                ? Colors.white
                : color.withOpacity(0.5),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: controller.isPressed.value
                ? [
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: 30,
                      spreadRadius: -10,
                    ),
                  ]
                : null,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: icon,
                  onPressed: () {
                    // Handle search icon press
                  },
                ),
                SizedBox(
                  height: 60,
                ),
                Transform.translate(
                  offset: controller.position.value,
                  child: MyText(
                    text: text,
                    color: colorText,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FlashContainerController extends GetxController {
  RxBool isPressed = false.obs;
  Rx<Offset> position = Offset.zero.obs;

  void togglePressed() {
    isPressed.toggle();
  }

  void updatePosition(Offset delta) {
    position.value += delta;
  }
}