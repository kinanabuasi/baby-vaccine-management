import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/mobile_screen_controller.dart';

class MobileScreenView extends StatelessWidget {
  const MobileScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MobileScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MobileScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
