import 'package:calculator/Controller/calculatorController.dart';
import 'package:calculator/Presentation/widgets/category2_widget.dart';
import 'package:calculator/Presentation/widgets/category_widget.dart';
import 'package:calculator/Presentation/widgets/home_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

final navbarController = Get.put(CalculatorController());
// Widget custom_navbar() {s
  // return 

  // ===================================================================================
  // return Row(
  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //   children: [

  //     Obx(()=> custom_icon(Icons.home, "home",navbarController.homeicon.value?Color(0xff325288):Colors.grey)),
  //     Obx(()=> custom_icon(Icons.grid_view_outlined, "category",navbarController.categoryicon.value?Color(0xff325288):Colors.grey)),
  //      Obx(()=> custom_icon(Icons.monetization_on_outlined,"money",navbarController.moneyicon.value?Color(0xff325288):Colors.grey)),

  //   ],
  // );
// }

Widget custom_icon(icn, val, color) {
  return IconButton(
      onPressed: () {
        // navbarController.pagechange(val);
      },
      icon: Icon(
        icn,
        color: color,
        size: 35,
      ));
}
