// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final List<String> captions = [
    'Personal Stories\n Too many families in Damascus are still\n personally affected by vaccine-preventable diseases',
    'Supporting Community-based Organizations\n to Reignite a Culture of Immunization',
    'Good Health WINs\n Our program with Baby vaccination campaigns\n reduces health disparities and increases  vaccination opportunities and education',
    'Help Protect Your Children',
    'Protect Your children Against diseases\n We help answer your questions about multiple vaccines.',
  ];
  final List<String> images = [
    "asset/images/b1.jpg",
    "asset/images/b10.jpg",
    "asset/images/b2.jpg",
    "asset/images/b11.jpg",
    "asset/images/b12.jpg",
  ];
  final List<String> menuItems = [
    'Option 1',
    'Option 2',
    'Option 3',
  ];
  final List<CrystalPhoto> photos = [
    CrystalPhoto(
        imagePath: "asset/images/b14.jpg",
        text: 'Photo 1',
        height: 10.0,
        width: 5.0),
    CrystalPhoto(
        imagePath: "asset/images/b5.jpg",
        text: 'Photo 2',
        height: 20.0,
        width: 15.0),
    CrystalPhoto(
        imagePath: "asset/images/b3.jpg",
        text: 'Photo 3',
        height: 20.0,
        width: 15.0),
    CrystalPhoto(
        imagePath: "asset/images/b9.jpg",
        text: 'Photo 4',
        height: 20.0,
        width: 15.0),
    // CrystalPhoto(
    //     imagePath: "asset/images/b13.jpg",
    //     text: 'Photo 5',
    //     height: 50.0,
    //     width: 50.0),
    // CrystalPhoto(
    //     imagePath: "asset/images/b13.jpg",
    //     text: 'Photo 6',
    //     height: 50.0,
    //     width: 50.0),
    // CrystalPhoto(
    //     imagePath: "asset/images/b14.jpg",
    //     text: 'Photo 7',
    //     height: 100.0,
    //     width: 50.0),
    //     CrystalPhoto(
    //     imagePath: "asset/images/b12.jpg",
    //     text: 'Photo 8',
    //     height: 100.0,
    //     width: 50.0),
    //     CrystalPhoto(
    //     imagePath: "asset/images/b10.jpg",
    //     text: 'Photo 9',
    //     height: 100.0,
    //     width: 50.0),
    // Add more CrystalPhotos as needed
  ];

}

class CrystalPhoto extends GetxController {
  final String imagePath;
  final String text;
  double width;
  double height;

  CrystalPhoto(
      {required this.imagePath,
      required this.text,
      required this.width,
      required this.height});
}
