import 'package:calculator/Presentation/gst.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget Caterory2_widget()
{
  return  Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  custom_card("assets/tax.png", "GST"),
                  const SizedBox(width: 100,),
                  const SizedBox(width: 100,)
                ],
              ),
            ),
           
          ],
        );
}


custom_card(img, txt) {
  return GestureDetector(
    onTap: (){
      Get.to(Gstpage());
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
