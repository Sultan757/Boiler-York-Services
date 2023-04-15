import 'package:flutter/material.dart';

import '../constants/colors.dart';

Widget contactDetailsCard() {
  return Container(
    height: 63.0,
    width: 156.0,
    decoration: BoxDecoration(
        color: MyColors.bgGreyColor, borderRadius: BorderRadius.circular(10.0)),
    child: Center(
      child: Column(children: const [
        SizedBox(height: 15),
        Text("Call Us:",
            style: TextStyle(
                color: MyColors.greyColor, fontWeight: FontWeight.bold)),
        Text("+447877526451",
            style: TextStyle(
                color: MyColors.blackColor, fontWeight: FontWeight.bold))
      ]),
    ),
  );
}
