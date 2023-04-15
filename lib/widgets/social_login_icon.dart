import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/colors.dart';

Widget socialLoginIcon(
    {onPressed, height, width,   image}) {
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
          SvgPicture.asset(image),
          const SizedBox(width: 10),
        ],
      )),
    ),
  );
}
