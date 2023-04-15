import 'package:boiler_service_york/widgets/app_button.dart';
import 'package:boiler_service_york/widgets/app_textfield.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class AddServiceScreen extends StatelessWidget {
  const AddServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16.0, top: 10.0),
              child: Icon(Icons.menu, color: MyColors.blackColor),
            ),
            const SizedBox(height: 10.0),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text("Add Details\nYour Service",
                    style: TextStyle(
                        color: MyColors.blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 27.0)),
              ),
            ),
            const SizedBox(height: 10.0),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: CircleAvatar(
                      backgroundColor: MyColors.bgGreyColor,
                      radius: 50.0,
                      child: Icon(Icons.add_circle_outline_outlined,
                          color: MyColors.greyColor, size: 30.0)),
                ),
                SizedBox(width: 10.0),
                VerticalDivider(thickness: 1.0),
                SizedBox(width: 10.0),
                Text("Upload Your\n Logo Here",
                    style: TextStyle(
                        color: MyColors.blackColor,
                        fontWeight: FontWeight.bold))
              ],
            ),
            appTextField(hintText: 'Service Name'),
            appTextField(hintText: ' Service Description'),
            appTextField(hintText: 'Working Hour'),
            appTextField(hintText: 'Price'),
            appTextField(hintText: 'Country'),
            const SizedBox(height: 20.0),
            Center(
              child: appButton(
                  text: 'SUBMIT',
                  textSize: 12.0,
                  textColor: MyColors.whiteColor,
                  color: MyColors.greenColor,
                  height: 46.0,
                  width: 319.0),
            ),
          ],
        ),
      ),
    );
  }
}
