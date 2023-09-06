// // ignore_for_file: prefer_const_constructors, must_be_immutable, avoid_print, invalid_use_of_protected_member, prefer_interpolation_to_compose_strings

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../../../components/my_text.dart';
// import '../../../../constants/colors.dart';
// import '../../../../constants/component .dart';
// import '../../../../core/class/crud.dart';
// import '../controllers/get_all_governorate_controller.dart';

// class GetAllGovernorateView extends StatelessWidget {
//   GetAllGovernorateView({Key? key}) : super(key: key);
//   GetAllGovernorateController governorateController =
//       Get.put(GetAllGovernorateController());
//   final crud = Get.put(Crud());

//   @override
//   Widget build(BuildContext context) {
//     //  governorateController.fetchGovernorates().then((value){
//     //   governorateController.governorates.addAll(value);

//     //  });
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('GetAllGovernorateView'),
//         centerTitle: true,
//       ),
//       body: Obx(
//         () {
//           // governorateController.governorates.isNotEmpty
//           //     ?
//           // Text(governorateController.governorates as String)
//           if (governorateController.governorates.isEmpty) {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           } else {
//             return ListView.builder(
//                 itemCount: governorateController.governorates.length,
//                 itemBuilder: (context, index) {
//                   final governorate = governorateController.governorates[index];
//                   return ListTile(
//                     title: Text(governorate),
//                     // : Center(
//                     //     child: CircularProgressIndicator(),
//                     //   ),
//                   );
//                 });
//           }
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => governorateController.fetchGovernorates(),
//         child: Icon(Icons.refresh),
//       ),
//     );
//   }
// }
