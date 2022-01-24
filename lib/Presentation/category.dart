import 'package:calculator/Presentation/age.dart';
import 'package:calculator/Presentation/discount.dart';
import 'package:calculator/Presentation/gst.dart';
import 'package:calculator/Presentation/lengthconverter.dart';
import 'package:calculator/Presentation/mass.dart';
import 'package:calculator/Presentation/navbar.dart';
import 'package:calculator/Presentation/speed.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 70, left: 8, right: 8),
        child: Column(
          children: [
         
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  custom_card("assets/cake.png", "Age"),
                  custom_card("assets/speed.png", "Speed"),
                  custom_card("assets/discount.png", "Discount")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  custom_card("assets/length.png", "Age"),
                  custom_card("assets/mass.png", "Mass"),
                  SizedBox(
                    width: 100,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

custom_card(img, txt) {
  return GestureDetector(
    onTap: (){
      Get.to(()=>Gstpage());
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
