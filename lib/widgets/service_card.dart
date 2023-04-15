import 'package:boiler_service_york/constants/colors.dart';
import 'package:boiler_service_york/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget serviceCard() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(20.0),
    child: Container(
      height: 180,
      width: 160,
      decoration: BoxDecoration(
          color: MyColors.offWhiteColor,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            height: 90,
            width: double.infinity,
            child: SvgPicture.asset(
              'assets/welcome_image.svg',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Gas Boiler\nService",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("£80",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(width: 5.0),
                    GestureDetector(
                      onTap: () {
                        // Get.to(() => const SignUpScreen());
                      },
                      child: const Text('1 hour',
                          style: TextStyle(
                            color: MyColors.greyColor,
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 12.0),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(left: 10.0),
              child: appButton(
                onPressed: () {},
                height: 20.0,
                width: 70.0,
                color: MyColors.greenColor,
                text: 'Get Started',
                textColor: MyColors.whiteColor,
                textSize: 8.0,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
