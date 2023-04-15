import 'package:flutter/material.dart';

Widget appButton(
    {onPressed, color, height, width, text, textColor, textSize, fontWeight}) {
  return GestureDetector(
    onTap: onPressed,
    child: Container(
      height: height,
      width: width,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
            fontWeight: fontWeight, color: textColor, fontSize: textSize),
      )),
    ),
  );
}
