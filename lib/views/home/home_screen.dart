import 'package:boiler_service_york/constants/colors.dart';
import 'package:boiler_service_york/widgets/app_button.dart';
import 'package:boiler_service_york/widgets/app_textfield.dart';
import 'package:boiler_service_york/widgets/contact_details_card.dart';
import 'package:boiler_service_york/widgets/service_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../boiler_services/boiler_services_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> items = [
      // Add your widgets here
      Stack(children: [
        Container(
          height: 164,
          width: 280.0,
          child: Center(
              child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child:
                SvgPicture.asset('assets/welcome_image.svg', fit: BoxFit.cover),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 30),
            const Text("GAS BOILER",
                style: TextStyle(
                    color: MyColors.whiteColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold)),
            const Text("Service",
                style: TextStyle(
                    color: MyColors.whiteColor,
                    fontSize: 27.0,
                    fontWeight: FontWeight.normal)),
            const Text("50%",
                style: TextStyle(
                  color: MyColors.yellowColor,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 20,
                width: 60,
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                    child: Text(
                  'BOOK NOW',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: MyColors.blackColor,
                      fontSize: 7.0),
                )),
              ),
            ),
          ]),
        )
      ]),
    ];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                      width: double.infinity,
                      child: SvgPicture.asset('assets/welcome_image.svg',
                          fit: BoxFit.cover)),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 30),
                          const Text("WELCOME TO",
                              style: TextStyle(
                                  color: MyColors.greyColor,
                                  fontSize: 13.0,
                                  letterSpacing: 4.0)),
                          const Text("NEIGHBOUR",
                              style: TextStyle(
                                color: MyColors.yellowColor,
                                fontSize: 27.0,
                              )),
                          const Text("Installation Service Repair",
                              style: TextStyle(
                                color: MyColors.whiteColor,
                                fontSize: 13.0,
                              )),
                          const SizedBox(height: 10),
                          appButton(
                            onPressed: () {},
                            height: 30.0,
                            width: 120.0,
                            color: MyColors.greenColor,
                            text: 'Get Started',
                            textColor: MyColors.whiteColor,
                          ),
                        ]),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  appTextField(hintText: 'Search', height: 29.0, width: 265.0),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 30.0,
                      width: 60.5,
                      decoration: BoxDecoration(
                          color: MyColors.greenColor,
                          borderRadius: BorderRadius.circular(16.0)),
                      child: const Center(
                          child: Icon(Icons.filter_alt,
                              color: MyColors.whiteColor, size: 18)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Stack(children: [
                CarouselSlider(
                  items: items,
                  options: CarouselOptions(
                    viewportFraction: 1,
                    height: 164.0,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                // Column(
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.only(left: 70.0),
                //       child: Column(children: [
                //         const SizedBox(height: 30),
                //         const Text("WELCOME TO",
                //             style: TextStyle(
                //                 color: MyColors.greyColor,
                //                 fontSize: 13.0,
                //                 letterSpacing: 4.0)),
                //         const Text("NEIGHBOUR",
                //             style: TextStyle(
                //               color: MyColors.yellowColor,
                //               fontSize: 27.0,
                //             )),
                //         const Text("Installation Service Repair",
                //             style: TextStyle(
                //               color: MyColors.whiteColor,
                //               fontSize: 13.0,
                //             )),
                //         const SizedBox(height: 10),
                //         appButton(
                //           onPressed: () {},
                //           height: 30.0,
                //           width: 120.0,
                //           color: MyColors.greenColor,
                //           text: 'Get Started',
                //           textColor: MyColors.whiteColor,
                //         ),
                //       ]),
                //     )
                //   ],
                // )
              ]),
              const SizedBox(height: 10.0),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 13.0),
                  child: Text("Services",
                      style: TextStyle(
                          color: MyColors.blackColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 27.0)),
                ),
              ),
              const SizedBox(height: 20.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0, left: 10.0),
                      child: serviceCard(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: serviceCard(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: serviceCard(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: serviceCard(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: serviceCard(),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Stack(children: [
                Container(
                  width: 380,
                  height: 220,
                  decoration: BoxDecoration(
                      color: MyColors.blackColor,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 30),
                                const Text("ANOUNCEMENT",
                                    style: TextStyle(
                                        color: MyColors.greyColor,
                                        fontSize: 13.0,
                                        letterSpacing: 4.0)),
                                const Text("RICHARD",
                                    style: TextStyle(
                                      color: MyColors.whiteColor,
                                      fontSize: 27.0,
                                      fontWeight: FontWeight.bold,
                                    )),
                                const Text("NEIGHBOUR",
                                    style: TextStyle(
                                      color: MyColors.yellowColor,
                                      fontSize: 27.0,
                                      fontWeight: FontWeight.bold,
                                    )),
                                const Text("2 YEAR AGO",
                                    style: TextStyle(
                                      color: MyColors.whiteColor,
                                      fontSize: 13.0,
                                    )),
                                const Text(
                                  "Welcome to Boiler Service York on the Wix app.\nTake a look around and see what you can do!",
                                  style: TextStyle(
                                      color: MyColors.greyColor, fontSize: 8.0),
                                ),
                                const SizedBox(height: 10),
                                appButton(
                                  onPressed: () {},
                                  height: 25.0,
                                  width: 100.0,
                                  color: MyColors.greenColor,
                                  text: 'Get Started',
                                  textSize: 10.0,
                                  textColor: MyColors.whiteColor,
                                ),
                              ]),
                          Container(
                              height: 103,
                              width: 103,
                              margin: const EdgeInsets.only(right: 20),
                              child: SvgPicture.asset('assets/logo.svg')),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
              const SizedBox(height: 20.0),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 13.0),
                  child: Text("Upcoming Sessions",
                      style: TextStyle(
                          color: MyColors.blackColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 27.0)),
                ),
              ),
              const SizedBox(height: 20.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0, left: 10.0),
                      child: serviceCard(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: serviceCard(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: serviceCard(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: serviceCard(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: serviceCard(),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Center(
                child: Text("Contact Us",
                    style: TextStyle(
                        color: MyColors.blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 27.0)),
              ),
              const SizedBox(height: 10.0),
              const Center(
                  child: Text(
                "Gas Boiler Service, repair and installation.\n Landlord safety certificates and gas boiler servicing",
                textAlign: TextAlign.center,
                style: TextStyle(color: MyColors.greyColor, fontSize: 7.0),
              )),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    contactDetailsCard(),
                    contactDetailsCard(),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Get.to(() => const BoilerServicesDetailsScreen());
                },
                child: appButton(
                    color: MyColors.greenColor,
                    text: 'Get In Touch',
                    height: 46.0,
                    width: 319.0,
                    textColor: MyColors.whiteColor),
              ),
              const SizedBox(height: 30.0)
            ],
          ),
        ),
      ),
    );
  }
}
