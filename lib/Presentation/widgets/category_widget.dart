import 'package:calculator/Controller/categoryController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final categorycontroller = Get.put(CategoryController());
Widget Category_widget() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            custom_card("assets/cake.png", "Age","age"),
            custom_card("assets/speed.png", "Speed",'speed'),
            custom_card("assets/discount.png", "Discount",'discount')
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            custom_card("assets/length.png", "Scale",'scale'),
            custom_card("assets/mass.png", "Mass",'mass'),
            SizedBox(
              width: 100,
            )
          ],
        ),
      ),
    ],
  );
}

custom_card(img, txt,val) {
  return GestureDetector(
    onTap: () {
      categorycontroller.categorypage(val);
    },
    child: Card(
      elevation: 0,
      child: Column(
        children: [
          Image.asset(
            img,
            width: 50,
            height: 50,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            txt,
            style: TextStyle(
                fontSize: 18,
                color: Color(0xff325288),
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    ),
  );
}
