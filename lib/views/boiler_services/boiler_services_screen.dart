import 'package:boiler_service_york/constants/colors.dart';
import 'package:boiler_service_york/views/boiler_services/company_services_screen.dart';
import 'package:boiler_service_york/widgets/app_yellow_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../widgets/app_button.dart';
import '../../widgets/app_textfield.dart';
import '../../widgets/contact_details_card.dart';
import '../../widgets/service_card.dart';

class BoilerServicesDetailsScreen extends StatelessWidget {
  const BoilerServicesDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.menu, color: MyColors.blackColor),
                  appButton(
                      text: 'Invite Friends',
                      textSize: 7.0,
                      color: MyColors.yellowColor,
                      height: 20.0,
                      width: 60.0)
                ]),
          ),
          const SizedBox(height: 0.0),
          Row(
            children: [
              appTextField(hintText: 'Search', height: 29.0, width: 300.0),
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
          const SizedBox(height: 10.0),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 18.0),
              child: Text("Services",
                  style: TextStyle(
                      color: MyColors.blackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 27.0)),
            ),
          ),
          const SizedBox(height: 10.0),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            ListTile(
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(40.0),
                                child: CircleAvatar(
                                  radius: 30.0,
                                  child: SvgPicture.asset(
                                      'assets/welcome_image.svg',
                                      fit: BoxFit.cover),
                                ),
                              ),
                              title: const Text('Gas Boiler Service',
                                  style: TextStyle(
                                      color: MyColors.blackColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0)),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 3.0),
                                  const Text(
                                      'Lorem Ipsum is simply dummy text of\nand typesetting industry ',
                                      style: TextStyle(
                                          color: MyColors.greyColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 7.0)),
                                  const SizedBox(height: 7.0),
                                  Row(
                                    children: [
                                      appButton(
                                          text: 'View Details',
                                          color: MyColors.greenColor,
                                          textColor: MyColors.whiteColor,
                                          textSize: 7.0,
                                          height: 20.0,
                                          width: 60.0),
                                      const SizedBox(width: 10.0),
                                      appYellowButton(
                                        text: 'BOOK NOW',
                                        color: MyColors.yellowColor,
                                        textSize: 7.0,
                                        textColor: MyColors.blackColor,
                                        height: 20.0,
                                        width: 60.0,
                                      )
                                    ],
                                  )
                                ],
                              ),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const VerticalDivider(thickness: 1.0),
                                  const SizedBox(width: 16.0),
                                  Column(children: const [
                                    SizedBox(height: 5.0),
                                    Text("\$80",
                                        style: TextStyle(
                                            color: MyColors.blackColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 23.0)),
                                    SizedBox(height: 5.0),
                                    Text("1 Hour",
                                        style: TextStyle(
                                            color: MyColors.greyColor,
                                            fontSize: 12.0))
                                  ]),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Divider(thickness: 1.0),
                            )
                          ],
                        ),
                      );
                    },
                  ),
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
                          padding:
                              const EdgeInsets.only(right: 20.0, left: 10.0),
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
                      //Get.to(() => const BoilerServicesDetailsScreen());
                    },
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => const CompanyServiceDetails());
                      },
                      child: appButton(
                          color: MyColors.greenColor,
                          text: 'Get In Touch',
                          height: 46.0,
                          width: 319.0,
                          textColor: MyColors.whiteColor),
                    ),
                  ),
                  const SizedBox(height: 30.0)
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
