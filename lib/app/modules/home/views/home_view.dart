// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import, must_be_immutable, unused_local_variable, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:baby_lc/Widgets/CustomGestureDetector.dart';
import 'package:baby_lc/Widgets/RoundedIconButton.dart';
import 'package:baby_lc/app/modules/Login/views/login_view.dart';
import 'package:baby_lc/app/modules/SignUp/views/sign_up_view.dart';
import 'package:baby_lc/components/my_text.dart';
import 'package:baby_lc/components/text_form/my_text_form_field.dart';
import 'package:baby_lc/constants/colors.dart';
import 'package:baby_lc/constants/component%20.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Widgets/FlashContainer.dart';
import '../../../../core/class/crud.dart';
import '../../../routes/app_pages.dart';
import '../../Adding_Center/views/adding_center_view.dart';
import '../../CreateChildCard/views/create_child_card_view.dart';
import '../controllers/home_controller.dart';
// import 'dart:ui_web';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  HomeController homeController = Get.put(HomeController());
  final Crud crud = Get.put(Crud());
  @override
  Widget build(BuildContext context) {
    // final Function wp = Screen(MediaQuery.of(context).size).wp;
    final double screenWidth = MediaQuery.of(context).size.width;
        final double screenHeight = MediaQuery.of(context).size.height;

    final double itemMaxSize =
        screenWidth * 0.5; // Adjust the maximum size as needed
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(120.0), // Set the height of the AppBar
      //   child: AppBar(
      //     backgroundColor: AppbarColor,
      //     foregroundColor: whiteGrey,
      //     shadowColor: whiteGrey,
      //     flexibleSpace: FlexibleSpaceBar(
      //       // background: ,
      //       title: SizedBox(
      //         width: 90,
      //         height: 120,
      //         child: Image.asset("asset/images/l1.png"),
      //       ),
      //       titlePadding: EdgeInsets.only(left: 15),
      //       //
      //       // Add your low-level content here (e.g. titles that go to other pages)
      //     ),
      //     actions: [
      //       IconButton(
      //         icon: Icon(
      //           Icons.person_add_rounded,
      //           size: 40,
      //           color: YellowColor,
      //         ),
      //         onPressed: () {
      //           // Handle search icon press
      //         },
      //       ),
      //       SizedBox(
      //         width: 20,
      //       ),
      //       IconButton(
      //         icon: Icon(
      //           Icons.search,
      //           size: 40,
      //           color: YellowColor,
      //         ),
      //         onPressed: () {
      //           // Handle search icon press
      //         },
      //       ),
      //       SizedBox(
      //         width: 20,
      //       ),
      //       IconButton(
      //         icon: Icon(
      //           Icons.translate,
      //           size: 40,
      //           color: mainColor2,
      //         ),
      //         onPressed: () {
      //           // Handle language icon press
      //         },
      //       ),
      //       SizedBox(
      //         width: 20,
      //       ),
      //     ], // Add your high-level content here (e.g. image, search icon, language icon)
      //   ),
      // ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Row(
              children: [
                Image.asset(
                  "asset/images/l1.png",
                  width: 100,
                  height: 100,
                ),
                // SizedBox(width: 10),
                MyText(
                  text: 'Baby Vaccine',
                  color: white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontfamily: Arial,
                ),
              ],
            ),
            expandedHeight: 100,
            backgroundColor: mainColor2,
            foregroundColor: whiteGrey,
            shadowColor: whiteGrey,
            floating: true,
            // snap: true,
            pinned: true,
            elevation: 0, // Remove the shadow
            toolbarHeight: 100, // Adjust the height as desired
            // leading:

            flexibleSpace: FlexibleSpaceBar(

                 background:Image.asset(
                          "asset/images/dr.jpg",
                          fit: BoxFit.cover,
                          // color:Colors.transparent,
                          colorBlendMode: BlendMode.modulate,
                          // width: 110,
                          // height: 100,
                        ),
                // Row(
                //       mainAxisAlignment: MainAxisAlignment.end,
                //       crossAxisAlignment: CrossAxisAlignment.end,
                //       children: <Widget>[
                //         IconButton(
                //           color: Colors.yellow,
                //           icon: Icon(Icons.search),
                //           onPressed: () {
                //             // Handle search icon press
                //           },
                //         ),
                //         IconButton(
                //           color: Colors.yellow,
                //           onPressed: () {},
                //           icon: Icon(Icons.language),
                //         ),
                //         IconButton(
                //           color: Colors.yellow,
                //           icon: Icon(Icons.search),
                //           onPressed: () {
                //             // Handle search icon press
                //           },
                //         ),
                //         IconButton(
                //           color: Colors.yellow,
                //           onPressed: () {},
                //           icon: Icon(Icons.language),
                //         ),
                //       ]),
                ),
            actions: [
              CustomGestureDetector(
                icon: Icon(
                  Icons.add_card_outlined,
                  color: mainColor2,
                  size: 30,
                ),
                 onTap: () { 
                  Get.to(CreateChildCardView());
                  },
                  iconName: 'Adding a Child Card',
              ),
              SizedBox(
                width: 20,
              ),
                CustomGestureDetector(
                icon: Icon(
                  Icons.domain_add_outlined,
                  color: mainColor2,
                  size: 30,
                ),
                 onTap: () { 
                  Get.to(AddingCenterView());
                  },
                  iconName: 'Adding a Health Center',
              ),
              SizedBox(
                width: 20,
              ),
             CustomGestureDetector(
                icon: Icon(
                    Icons.person_add_sharp,
                    color: mainColor2,
                    size: 30,
                  ),
                 onTap: () { 
                  Get.to(SignUpView());
                  },
                  iconName: 'Adding an account',
              ),

              SizedBox(
                width: 20,
              ),
              CustomGestureDetector(
                icon:Icon(
                    Icons.translate,
                    color: mainColor2,
                    size: 30,
                  ),
                 onTap: () {  }, 
                 iconName: 'change the language',
              ),

             
              // IconButton(
              //   icon: Icon(
              //     Icons.translate,
              //     size: 30,
              //     color: mainColor2,
              //   ),
              //   onPressed: () {
              //     // Handle language icon press
              //   },
              // ),
              SizedBox(
                width: 20,
              ),
              // MyTextFormField(
              //   validator: () {},
              //   hintText: 'Search',
              //   fillColor: mainColor2,
              //   prefixIcon: Icon(
              //     Icons.search,
              //     color: white,
              //     size: 30,
              //   ),
              // ),
            ],
          ),
          SliverToBoxAdapter(
            child: AppBar(
              backgroundColor: white,
              actions: [
                GestureDetector(
                  onTap: () {
                    showMenu(
                      context: context,
                      position: RelativeRect.fromLTRB(0, 60, 0, 0),
                      items: homeController.menuItems.map((String item) {
                        return PopupMenuItem<String>(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                    ).then((selectedValue) {
                      if (selectedValue != null) {
                        // Handle the selected value
                        // print(selectedValue);
                      }
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      // color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Title',
                          style: TextStyle(color: Colors.black),
                        ),
                        Icon(Icons.arrow_drop_down, color: Colors.black),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showMenu(
                      context: context,
                      position: RelativeRect.fromLTRB(0, 60, 0, 0),
                      items: homeController.menuItems.map((String item) {
                        return PopupMenuItem<String>(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                    ).then((selectedValue) {
                      if (selectedValue != null) {
                        // Handle the selected value
                        // print(selectedValue);
                      }
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      // color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Title',
                          style: TextStyle(color: Colors.black),
                        ),
                        Icon(Icons.arrow_drop_down, color: Colors.black),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                CarouselSlider.builder(
                  itemCount: homeController.images.length,
                  itemBuilder: (BuildContext context, int index, int i) {
                    return Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(homeController.images[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: MyText(
                          text: homeController.captions[index],
                          color: blackWithOpacity,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    );
                  },
                  options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 20 / 7,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  height: 1000,
                  width: 100,
                  child: GridView.count(
                    // scrollDirection : Axis.horizontal,
                    padding: EdgeInsets.all(15),
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 2,
                    mainAxisSpacing: 60.0,
                    crossAxisSpacing: 60.0,
                    children:
                        List.generate(homeController.photos.length, (index) {
                      CrystalPhoto photo = homeController.photos[index];
                      return GestureDetector(
                          onTap: () {
                            // Handle item tap
                          },
                          // child: Card(
                          child: Container(
                            height: 400,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              image: DecorationImage(
                                image: AssetImage(photo.imagePath),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Center(
                              child: MyText(
                                text: photo.text,
                                color: textcolor,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                fontfamily: Myriad,
                              ),
                            ),
                          ),
                          // ),
                        );
                      // );
                    }),
                  ),
                ),
                Container(
                    height: 1000,
                    color: backgroundWhite,
                    child: Column(
                      // mainAxisAlignment : MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Questions About Vaccines',
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700,
                                  color: originalBlack,
                                  decoration: TextDecoration.none,
                                  fontFamily: Arial,
                                ),
                              ),
                              TextSpan(
                                text:
                                    '\n', // Empty string to create a line break
                                style: TextStyle(
                                  fontSize:
                                      8, // Adjust the font size to control the space height
                                ),
                              ),
                              TextSpan(
                                text:
                                    '\n', // Empty string to create a line break
                                style: TextStyle(
                                  fontSize:
                                      8, // Adjust the font size to control the space height
                                ),
                              ),
                              TextSpan(
                                text:
                                    '\nWe understand that people have a lot of questions about vaccines.',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  color: textcolor,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              TextSpan(
                                text:
                                    '\nHere you will find science-based information to help you make an informed decision about vaccinations for your children. ',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  color: textcolor,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 50,
                            ),
                            FlashContainerWidget(
                              color: mainColor1,
                              text: '    Vaccine Schedules',
                              colorText: textcolor,
                              icon: Icon(
                                Icons.calendar_month_outlined,
                                color: textcolor,
                                size: 60,
                              ),
                            ),
                            // TextAnimationWidget(),
                            SizedBox(
                              width: 110,
                            ),
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: <TextSpan>[
                                  TextSpan(
                                    text:
                                        'frequently-asked questions about the recommended\n',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                      color: darkGrey,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'childhood immunization schedules',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                      color: darkGrey,
                                      fontFamily: 'font1',
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: <TextSpan>[
                                  TextSpan(
                                    text:
                                        'frequently-asked questions about how\n',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                      color: darkGrey,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'the immunization works',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                      color: darkGrey,
                                      fontFamily: 'font1',
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 150,
                            ),
                            FlashContainerWidget(
                              color: mainColor2,
                              text: '    How Vaccines Work',
                              colorText: textcolor,
                              icon: Icon(
                                Icons.vaccines_rounded,
                                color: textcolor,
                                size: 60,
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                          ],
                        ),
                      ],
                    )),
                Container(
                  width: 1000,
                  height: 400,
                  color: mainColor2,
                  // child: Center(
                  child: Column(
                    children: [
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: 100,
                            width: 1000,
                            // color: mainColor1,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                // crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    width: 90,
                                    height: 90,
                                    child: Image.asset("asset/images/l1.png"),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  MyText(
                                    text: 'Baby Vaccine processes\n management',
                                    color: textcolor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    fontfamily: Arial,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  style: DefaultTextStyle.of(context).style,
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Syria\n',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: darkGrey,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Damascus Countryside\n',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: darkGrey,
                                        fontFamily: 'font1',
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '+963982057090\n',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: darkGrey,
                                        fontFamily: 'font1',
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'kinanabuasi.ka@gmail.com\n',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: darkGrey,
                                        fontFamily: Myriad,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Column(
                            children: [
                              RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  style: DefaultTextStyle.of(context).style,
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Support Vaccines\n\n',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: textcolor,
                                        decoration: TextDecoration.none,
                                        fontFamily: Arial,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          'If you would like to do more to promote the importance of vaccines and strong vaccination\n policies in your community or at the national level, please take a moment to explore\n our resources and ideas. Baby Vaccine Administration works to educate the public, healthcare\n providers, the media and policymakers about the importance and safety\n of vaccinations to keep our children healthy\n',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: darkGrey,
                                        fontFamily: Myriad,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                width: 250,
                                height: 65,
                                // color:mainColor1 ,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: YellowColor,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(40.0),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                  Get.to(LoginView());
                                  },
                                  child: MyText(
                                    text: 'Member Login',
                                    color: textcolor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    fontfamily: Myriad,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 250,
                                height: 65,
                                // color:mainColor1 ,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: YellowColor,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(40.0),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                  Get.to(SignUpView());
                                  },
                                  child: MyText(
                                    text: 'Sign Up',
                                    color: textcolor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    fontfamily: Myriad,
                                  ),
                                ),
                              ),

                              // SizedBox(
                              //   height: 50,
                              // ),
                              // Row(
                              //   children: [
                              //     IconButton(
                              //       icon: Icon(Icons.facebook_outlined),
                              //       onPressed: () {
                              //         // Handle language icon press
                              //       },
                              //     ),
                              //     // SizedBox(
                              //     //   width: 20,
                              //     // ),
                              //     // IconButton(
                              //     //   icon: Icon(Icons.),
                              //     //   onPressed: () {
                              //     //     // Handle language icon press
                              //     //   },
                              //     // ),
                              //     // SizedBox(
                              //     //   width: 20,
                              //     // ),
                              //     // IconButton(
                              //     //   icon: Icon(Icons.language),
                              //     //   onPressed: () {
                              //     //     // Handle language icon press
                              //     //   },
                              //     // ),
                              //   ],
                              // )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  // ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
