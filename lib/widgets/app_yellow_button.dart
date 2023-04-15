import 'package:boiler_service_york/constants/colors.dart';
import 'package:flutter/material.dart';

Widget appYellowButton(
    {onPressed, color, height, width, text, textColor, fontWeight, textSize}) {
  return GestureDetector(
    onTap: onPressed,
    child: Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: MyColors.blackColor)),
      child: Center(
          child: Text(
        text,
        style: TextStyle(fontWeight: fontWeight, color: textColor, fontSize: textSize),
      )),
    ),
  );
}
