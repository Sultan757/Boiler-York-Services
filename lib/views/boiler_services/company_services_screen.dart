import 'package:boiler_service_york/views/company/companies_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_yellow_button.dart';
import '../../widgets/contact_details_card.dart';
import '../../widgets/service_card.dart';

class CompanyServiceDetails extends StatelessWidget {
  const CompanyServiceDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
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
            const SizedBox(height: 20),
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
                      style:
                          TextStyle(color: MyColors.greyColor, fontSize: 7.0),
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
                        child: GestureDetector(
                          onTap: () {
                            Get.to(() => const CompaniesListScreen());
                          },
                          child: appButton(
                              color: MyColors.greenColor,
                              text: 'Get In Touch',
                              height: 46.0,
                              width: 319.0,
                              textColor: MyColors.whiteColor),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30.0)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
