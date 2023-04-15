import 'package:boiler_service_york/views/start/on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() async {
    await Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const OnBoardingScreen());
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //double deviceheight = MediaQuery.of(context).size.height;
    //double devicewidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: SvgPicture.asset(
              'assets/logo.svg',
              fit: BoxFit.fill,
            ),
          )),
    );
  }
}
