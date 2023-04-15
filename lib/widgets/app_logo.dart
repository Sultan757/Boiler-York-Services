import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget appLogoWidget({double? height, double? width}) {
  return Container(
    height: height,
    width: width,
    child: SvgPicture.asset(
      'assets/logo.svg',
      fit: BoxFit.fill,
    ),
  );
}
