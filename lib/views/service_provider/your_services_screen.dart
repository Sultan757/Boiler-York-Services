import 'package:boiler_service_york/views/boiler_services/add_services.dart';
import 'package:boiler_service_york/widgets/service_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_textfield.dart';

class YourServicesScreen extends StatelessWidget {
  const YourServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 13.0),
                child: Text("Your Services",
                    style: TextStyle(
                        color: MyColors.blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 27.0)),
              ),
            ),
            //const SizedBox(height: 20.0),
            Expanded(
              child: GridView.builder(
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  // childAspectRatio: 0.75,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                        child: GestureDetector(
                            onTap: () {
                              Get.to(() => const AddServiceScreen());
                            },
                            child: serviceCard())),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
