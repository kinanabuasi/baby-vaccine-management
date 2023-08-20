
// ignore_for_file: unused_import, constant_identifier_names

import 'package:flutter/material.dart';

// ignore_for_file: non_constant_identifier_names

const String Arial="Arial";
const String Myriad="Myriad";
const String Poppins="Poppins";
 // final Function wp = Screen(MediaQuery.of(context).size).wp;
    // final double screenWidth = MediaQuery.of(context).size.width;
    // final double itemMaxSize =
    //     screenWidth * 0.5; // Adjust the maximum size as needed
// void navigateTo(context, widget) => Navigator.push(
//   context,
//   MaterialPageRoute(
//     builder: (BuildContext context) => widget,
//   ),
// );

// //
// // Widget DefultContainer(
// //     BuildContext context, {
// //       required double height,
// //       required double width,
// //       required double radius,
// //       required Widget child,
// //     })=>
// //     Container(
// //       width: MediaQuery.of(context).size.width*width,
// //       height: MediaQuery.of(context).size.height*height,
// //       decoration: BoxDecoration(
// //         borderRadius: BorderRadius.all(Radius.circular(radius)),
// //         color:Colors.white,
// //         boxShadow: [
// //           BoxShadow(
// //             color: Colors.white,
// //             spreadRadius: 3,
// //             blurRadius: 2,
// //             offset: Offset(0, 0),
// //           )],
// //       ),
// //       child:child,
// //     );

// Widget My_Card({                             //for instruction
//   required BuildContext context,
//    double ?height,
//    double ?width,
//    double ?radius,
//    double ?image_height,
//    double ?image_width,
//    double ?image_radius,
//   required String? image_path,
//   required String? text,

// })=> Container(
//   width: width!=null?MediaQuery.of(context).size.width*width:MediaQuery.of(context).size.width*0.9,
//   height:height!=null?MediaQuery.of(context).size.height*height:MediaQuery.of(context).size.height*0.2,
//   decoration: BoxDecoration(
//     borderRadius: BorderRadius.all(Radius.circular(radius!=null?radius:10)),
//     color:Colors.white,
//     boxShadow: [
//       BoxShadow(
//         color: Colors.white,
//         spreadRadius: 3,
//         blurRadius: 2,
//         offset: Offset(0, 0),
//       )],
//   ),
//   child:Row(
//     children: [
//       Container(
//         width: image_width!=null?MediaQuery.of(context).size.width*image_width:MediaQuery.of(context).size.width*0.3,
//         height:image_height!=null?MediaQuery.of(context).size.height*image_height:MediaQuery.of(context).size.height*0.4,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.all(Radius.circular(image_radius!=null?image_radius:20)),
//         ),
//         child: Image.asset(image_path!,
//           fit: BoxFit.fill,
//         ),
//       ),
//       Padding(
//         padding: const EdgeInsets.all(5),
//         child: Text(text!,
//           style: TextStyle(fontFamily:"font1"),
//         ),
//       ),
//     ],
//   ),
// );


// Widget Babies_cards(context,String gender)=>
// Padding(
//   padding: const EdgeInsets.only(top: 32,left: 20,bottom: 5,right: 20),
//   child: Center(
//     child: GestureDetector(
//       onTap: (){
//         navigateTo(context, Vaccine_Card());
//       },
//       child: My_Card(
//         context: context,
//         image_path: gender=="boy"?"asset/images/boy.jpg":"asset/images/girl.jpg",
//         image_radius: 10,
//         text: "Name:Ali\n"//منتفق شو محتوي النص بعدين
//             "Age: one month",
//       ),
//     ),
//   ),
// );


// Widget Notification_Card({
//   required BuildContext context,
//   double ?height,
//   double ?width,
//   double ?radius,
//   required String? text,

// })=> GestureDetector(
//   onTap: (){navigateTo(context, Notification_Details());},
//   child:   Container(

//     width: width!=null?MediaQuery.of(context).size.width*width:MediaQuery.of(context).size.width*0.9,

//     height:height!=null?MediaQuery.of(context).size.height*height:MediaQuery.of(context).size.height*0.1,

//     decoration: BoxDecoration(

//       borderRadius: BorderRadius.all(Radius.circular(radius!=null?radius:20)),

//       color:Colors.white,

//       boxShadow: [

//         BoxShadow(
//           color: Colors.white,
//           spreadRadius: 3,
//           blurRadius: 2,
//           offset: Offset(0, 0),
//         )],
//     ),

//     child:Container(
//       child: Row(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8),
//             child: Icon(Icons.notifications_active_outlined),
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(

//                 padding: const EdgeInsets.all(8),

//                 child: Text(text!,

//                   softWrap: false,

//                   maxLines: 1,

//                   overflow: TextOverflow.ellipsis,

//                   style: TextStyle(fontFamily:"font1"),

//                 ),

//               ),
//               SizedBox(height: MediaQuery.of(context).size.height*0.0001,),
//               Padding(

//                 padding: const EdgeInsets.only(left: 8,right: 8),

//                 child: Text("Time: 11:00 pm",

//                   textAlign: TextAlign.left,

//                   style: TextStyle(color: Colors.grey,),),

//               ),
//             ],
//           ),
//         ],

//       ),

//     ),

//   ),
// );