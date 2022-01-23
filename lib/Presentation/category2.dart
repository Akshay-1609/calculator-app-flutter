import 'package:calculator/Presentation/navbar.dart';
import 'package:flutter/material.dart';

class Category2Page extends StatelessWidget {
  const Category2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 70, left: 8, right: 8),
        child: Column(
          children: [
            custom_navbar(),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  custom_card("assets/tax.png", "GST"),
                  SizedBox(width: 100,),
                  SizedBox(width: 100,)
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
