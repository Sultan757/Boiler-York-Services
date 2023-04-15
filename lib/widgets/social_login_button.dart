import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/colors.dart';

Widget socialLoginButton(
    {onPressed,
    height,
    width,
    String? text,
    textColor,
    icon,
    iconColor,
    image}) {
  return GestureDetector(
    onTap: onPressed,
    child: Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: MyColors.greenColor.withOpacity(0.15),
          borderRadius: BorderRadius.circular(20)),
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          text == 'Continue With Google'
              ? SvgPicture.asset('assets/google.svg')
              : Icon(
                  icon,
                  color: iconColor,
                ),
          const SizedBox(width: 10),
          Text(
            text!,
            style: TextStyle(color: textColor),
          ),
        ],
      )),
    ),
  );
}
