import 'package:calculator/Presentation/category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

Widget custom_navbar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      custom_icon(Icons.home),
      custom_icon(Icons.grid_view_outlined),
      custom_icon(Icons.monetization_on_outlined)
    ],
  );
}

Widget custom_icon(icn) {
  return IconButton(
      onPressed: () {
        Get.to(() => CategoryPage());
      },
      icon: Icon(
        icn,
        color: Color(0xff325288),
        size: 35,
      ));
}
