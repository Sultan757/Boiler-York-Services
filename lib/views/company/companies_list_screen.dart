import 'package:boiler_service_york/views/service_provider/your_services_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';
import '../../widgets/app_button.dart';

class CompaniesListScreen extends StatelessWidget {
  const CompaniesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
            const SizedBox(height: 10.0),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text("Companies",
                    style: TextStyle(
                        color: MyColors.blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 27.0)),
              ),
            ),
            const SizedBox(height: 10.0),
            Expanded(
              child: SingleChildScrollView(
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 8,
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
                                GestureDetector(
                                  onTap: () {
                                    Get.to(() => const YourServicesScreen());
                                  },
                                  child: appButton(
                                      text: 'View Profile',
                                      color: MyColors.greenColor,
                                      textColor: MyColors.whiteColor,
                                      textSize: 7.0,
                                      height: 20.0,
                                      width: 60.0),
                                ),
                                const SizedBox(width: 10.0)
                              ],
                            ),
                            // trailing: Row(
                            //   mainAxisSize: MainAxisSize.min,
                            //   children: [
                            //     const VerticalDivider(thickness: 1.0),
                            //     const SizedBox(width: 16.0),
                            //     Column(children: const [
                            //       SizedBox(height: 5.0),
                            //       Text("\$80",
                            //           style: TextStyle(
                            //               color: MyColors.blackColor,
                            //               fontWeight: FontWeight.bold,
                            //               fontSize: 23.0)),
                            //       SizedBox(height: 5.0),
                            //       Text("1 Hour",
                            //           style: TextStyle(
                            //               color: MyColors.greyColor,
                            //               fontSize: 12.0))
                            //     ]),
                            //   ],
                            // ),
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
              ),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
