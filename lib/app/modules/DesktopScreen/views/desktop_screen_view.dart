import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/desktop_screen_controller.dart';

class DesktopScreenView extends StatelessWidget {
  const DesktopScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DesktopScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DesktopScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
