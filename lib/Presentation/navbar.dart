import 'package:calculator/Controller/calculatorController.dart';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

final navbarController = Get.put(CalculatorController());
Widget custom_navbar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      custom_icon(Icons.home, "home"),
      custom_icon(Icons.grid_view_outlined, "category"),
      custom_icon(Icons.monetization_on_outlined, "money")
    ],
  );
}

Widget custom_icon(icn, val) {
  return IconButton(
      onPressed: () {
        navbarController.pagechange(val);
      },
      icon: Icon(
        icn,
        color: Color(0xff325288),
        size: 35,
      ));
}
