import 'package:boiler_service_york/views/company/resgiter_company_screen.dart';
import 'package:boiler_service_york/widgets/app_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/colors.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_divider.dart';
import '../../widgets/app_yellow_button.dart';
import '../../widgets/social_login_icon.dart';
import 'login_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(flex: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("      Create\n Your Account",
                  style: TextStyle(color: MyColors.blackColor, fontSize: 30)),
            ],
          ),
          const SizedBox(height: 20),
          appTextField(
            hintText: 'Username',
            textFieldIcon: Icons.person,
          ),
          appTextField(hintText: 'Email', textFieldIcon: Icons.email),
          appTextField(
              hintText: 'Passsword',
              textFieldIcon: Icons.lock,
              suffixIcon: Icons.remove_red_eye),
          const Spacer(flex: 1),
          appButton(
            onPressed: () {},
            height: 46.0,
            width: 319.0,
            color: MyColors.greenColor,
            text: 'Sign Up',
            textColor: MyColors.whiteColor,
          ),
          const SizedBox(height: 10),
          appYellowButton(
            onPressed: () {
              Get.to(() => const RegisterCompanyScreen());
            },
            height: 46.0,
            width: 319.0,
            color: MyColors.yellowColor,
            text: 'Register your company',
            textColor: MyColors.blackColor,
          ),
          const SizedBox(height: 20),
          appDivider(text: 'Or Continue With'),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              socialLoginIcon(
                  onPressed: () {},
                  height: 41.0,
                  width: 77.0,
                  image: 'assets/facebook.svg'),
              socialLoginIcon(
                  onPressed: () {},
                  height: 41.0,
                  width: 77.0,
                  image: 'assets/google.svg'),
              socialLoginIcon(
                  onPressed: () {},
                  height: 41.0,
                  width: 77.0,
                  image: 'assets/apple-black-logo.svg'),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Already have an account?",
                  style: TextStyle(color: MyColors.greyColor)),
              const SizedBox(width: 5.0),
              GestureDetector(
                onTap: () {
                  Get.to(() => const LoginScreen());
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: MyColors.blackColor,
                  ),
                ),
              ),
            ],
          ),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}
