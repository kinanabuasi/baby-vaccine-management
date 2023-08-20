// // ignore_for_file: unused_import, prefer_const_constructors, unused_local_variable, prefer_const_literals_to_create_immutables, void_checks

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';


// class Language extends StatelessWidget {
//   const Language({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenheight = MediaQuery.of(context).size.height;
//     //Orientation orientation = MediaQuery.of(context).orientation;
//     return Scaffold(
//       body: Container(
//         padding: const EdgeInsets.all(15),
//         child: Column(mainAxisAlignment: MainAxisAlignment.center,
//             //crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 "1".tr,
//                 style: Theme.of(context).textTheme.headline1,
//               ),
//               SizedBox(height: 10),
//               CustomButtonLang(
//                 textbutton: "Arabic",
//                 onPressed: () {
//                   controller.changeLang("ar");
//                   Get.offNamed(AppRoute.onBoarding);
//                 },
//               ),
//               SizedBox(height: 10),
//               CustomButtonLang(
//                 textbutton: "English",
//                 onPressed: () {
//                   controller.changeLang("en");
//                   Get.offNamed(AppRoute.onBoarding);
//                 },
//               ),
//             ]),
//       ),
//     );
//   }
// }
