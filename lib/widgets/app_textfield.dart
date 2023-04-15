import 'package:flutter/material.dart';

Widget appTextField(
    {textFieldIcon, height, width, hintText, IconData? suffixIcon}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8.0),
    child: Container(
      height: height,
      width: width,
      // height: 53,
      // width: 319,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          hintText: hintText,
          prefixIcon: Icon(
            textFieldIcon,
            color: Colors.grey,
          ),
          suffixIcon: Icon(suffixIcon),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(30.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(30.0),
          ),
          filled: true,
          fillColor: Colors.grey[100],
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
    ),
  );
}
