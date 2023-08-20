import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/check_email_controller.dart';

class CheckEmailView extends StatelessWidget {
  const CheckEmailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CheckEmailView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CheckEmailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
