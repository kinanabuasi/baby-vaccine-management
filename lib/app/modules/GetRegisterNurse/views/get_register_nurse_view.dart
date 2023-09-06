import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/get_register_nurse_controller.dart';

class GetRegisterNurseView extends GetView<GetRegisterNurseController> {
  const GetRegisterNurseView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetRegisterNurseView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'GetRegisterNurseView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
