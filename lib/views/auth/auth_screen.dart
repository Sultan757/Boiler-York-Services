import 'package:boiler_service_york/constants/colors.dart';
import 'package:boiler_service_york/views/auth/signup_screen.dart';
import 'package:boiler_service_york/widgets/app_button.dart';
import 'package:boiler_service_york/widgets/app_divider.dart';
import 'package:boiler_service_york/widgets/social_login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../widgets/app_yellow_button.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.whiteColor,
        body: Container(
            child: Column(
          children: [
            Expanded(
              flex: 0,
              child: Container(
                  width: double.infinity,
                  height: 186,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/auth_image.svg'))),
                  child: SvgPicture.asset(
                    'assets/auth_image.svg',
                    fit: BoxFit.cover,
                  )),
            ),
            const SizedBox(height: 50),
            const Text("Let's Get Started",
                style: TextStyle(color: MyColors.blackColor, fontSize: 30)),
            const SizedBox(height: 40),
            socialLoginButton(
              onPressed: () {},
              height: 46.0,
              width: 319.0,
              text: 'Continue With Facebook',
              icon: (Icons.facebook),
              iconColor: Colors.blue,
              textColor: MyColors.blackColor,
            ),
            const SizedBox(height: 15.0),
            socialLoginButton(
              onPressed: () {},
              height: 46.0,
              width: 319.0,
              text: 'Continue With Google',
              icon: (Icons.facebook),
              iconColor: Colors.blue,
              textColor: MyColors.blackColor,
            ),
            const SizedBox(height: 15.0),
            socialLoginButton(
              onPressed: () {},
              height: 46.0,
              width: 319.0,
              text: 'Continue With Apple',
              icon: (Icons.apple),
              iconColor: MyColors.blackColor,
              textColor: MyColors.blackColor,
            ),
            const SizedBox(height: 30.0),
            appDivider(text: 'OR'),
            const SizedBox(height: 30.0),
            appButton(
              onPressed: () {},
              height: 46.0,
              width: 319.0,
              color: MyColors.greenColor,
              text: 'Sign in with password',
              textColor: MyColors.whiteColor,
            ),
            const SizedBox(height: 10.0),
            appYellowButton(
              onPressed: () {},
              height: 46.0,
              width: 319.0,
              color: MyColors.yellowColor,
              text: 'Register your company',
              textColor: MyColors.blackColor,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?",
                    style: TextStyle(color: MyColors.greyColor)),
                const SizedBox(width: 5.0),
                GestureDetector(
                  onTap: () {
                    Get.to(() => const SignUpScreen());
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: MyColors.blackColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
