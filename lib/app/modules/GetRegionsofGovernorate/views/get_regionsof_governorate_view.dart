// // ignore_for_file: avoid_print, must_be_immutable, prefer_const_constructors

// import 'package:flutter/material.dart'; 
// import 'package:get/get.dart'; 
// import '../../../../components/my_text.dart';
// import '../../../../constants/colors.dart';
// import '../../../../constants/component .dart';
// import '../../../../core/class/statusrequest.dart';
// import '../controllers/get_regionsof_governorate_controller.dart';

// class GetRegionsofGovernorateView
//     extends StatelessWidget {
//    GetRegionsofGovernorateView({Key? key}) : super(key: key);
//    GetRegionsofGovernorateController getRegionsofGovernorateController = Get.put(GetRegionsofGovernorateController());
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('GetRegionsofGovernorateView'),
//         centerTitle: true,
//       ),
//       body: 
//       //  Center(
//         GetBuilder<GetRegionsofGovernorateController>(builder: (getRegionsofGovernorateController) {
//         if (getRegionsofGovernorateController.statusRequest == StatusRequest.loading) {
//           return   Center(child: CircularProgressIndicator(),);
//         } else if (getRegionsofGovernorateController.statusRequest == StatusRequest.offlinefailure) {
//           return const Center(child: Text("Offline Failure"));
//         } else if (getRegionsofGovernorateController.statusRequest == StatusRequest.serverfailure) {
//           return const Center(child: Text("Server Failure"));
//         } else { 
//           return ListView.builder(
//                 itemCount: getRegionsofGovernorateController.data.length,
//                 itemBuilder: (context, index) {
//                   print(getRegionsofGovernorateController.data);
//                   return MyText(
//                     text:"${getRegionsofGovernorateController.data}",
//                     color: textcolor,
//                     fontSize: 30,
//                     fontWeight: FontWeight.bold,
//                     fontfamily: Myriad,
//                   );
//                 },
//               );
//         }
//         }
//       ),
//       // ),
//     );
//   }
// }
