import 'package:boiler_service_york/constants/colors.dart';
import 'package:boiler_service_york/widgets/app_button.dart';
import 'package:boiler_service_york/widgets/app_logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../auth/auth_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // double deviceheight = MediaQuery.of(context).size.height;
    //double devicewidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/onboarding.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(flex: 5),
                  appLogoWidget(height: 59, width: 59),
                  const SizedBox(height: 10),
                  const Text.rich(
                    TextSpan(
                      text: 'Lorem Epsum\n',
                      style: TextStyle(
                          fontSize: 30,
                          color: MyColors.whiteColor,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'is simply a dummy',
                          style: TextStyle(
                              color: MyColors.whiteColor,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    child: const Text(
                        'Dummy First Line and this\nand this is dummy second line',
                        style: TextStyle(color: MyColors.greyColor)),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const AuthScreen());
                    },
                    child: appButton(
                        color: MyColors.greenColor,
                        width: 118.0,
                        height: 31.0,
                        text: 'Get Started',
                        textColor: MyColors.whiteColor),
                  ),
                  const Spacer(flex: 3),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
