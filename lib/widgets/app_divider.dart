import 'package:boiler_service_york/constants/colors.dart';
import 'package:flutter/material.dart';

Widget appDivider({text}) {
  return Row(
    children: [
      const Expanded(
        child: Divider(),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 10.0,
          ),
        ),
      ),
      const Expanded(
        child: Divider(),
      ),
    ],
  );
}
