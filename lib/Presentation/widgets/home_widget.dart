import 'package:calculator/Presentation/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

Widget Homepage_widget() {
  return Padding(
    padding: const EdgeInsets.only(left: 10, right: 10),
    child: Column(
      children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Obx(() => Text(
                    equationController.equation.value,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "Equation:",
                  style: TextStyle(
                      fontSize: 23,
                      color: Colors.black45,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "Answer:",
                  style: TextStyle(
                      fontSize: 23,
                      color: Colors.black45,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Obx(() => Text(
                        equationController.answer.value,
                        maxLines: 3,
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600),
                      )),
                ),
              ],
            ),
          ],
        )),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  custom_txt_button("AC", 25, FontWeight.w500, "AC"),
                  custom_icon_button(Icons.backspace_rounded, 30, "back"),
                  custom_txt_button("%", 30, FontWeight.w500, "%"),
                  custom_txt_button("/", 30, FontWeight.w500, "/")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  custom_txt2_button("7", 30, FontWeight.w700, "7"),
                  custom_txt2_button("8", 30, FontWeight.w700, "8"),
                  custom_txt2_button("9", 30, FontWeight.w700, "9"),
                  custom_txt_button("x", 30, FontWeight.w500, "*")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  custom_txt2_button("4", 30, FontWeight.w700, "4"),
                  custom_txt2_button("5", 30, FontWeight.w700, "5"),
                  custom_txt2_button("6", 30, FontWeight.w700, "6"),
                  custom_txt_button("-", 30, FontWeight.w600, "-")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  custom_txt2_button("1", 30, FontWeight.w700, "1"),
                  custom_txt2_button("2", 30, FontWeight.w700, "2"),
                  custom_txt2_button("3", 30, FontWeight.w700, "3"),
                  custom_txt_button("+", 30, FontWeight.w600, "+")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  custom_txt2_button(".", 30, FontWeight.w700, "."),
                  custom_txt2_button("0", 30, FontWeight.w700, "0"),
                  custom_txt2_button("=", 30, FontWeight.w700, "="),
                  SizedBox(
                    width: 60,
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 15,
        )
      ],
    ),
  );
}

Widget custom_txt_button(txt, double size, width, val) {
  return GestureDetector(
      onTap: () {
        equationController.equationcreation(val);
      },
      child: Card(
        color: Colors.white,
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
        child: Container(
          height: 55,
          width: 55,
          child: Center(
            child: Text(
              txt,
              style: TextStyle(
                  fontSize: size, fontWeight: width, color: Color(0xff325288)),
            ),
          ),
        ),
      ));
}

Widget custom_icon_button(icn, double size, val) {
  return GestureDetector(
    onTap: () {
      equationController.equationcreation(val);
    },
    child: Card(
      color: Colors.white,
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
      child: Container(
        height: 55,
        width: 55,
        child: Center(
          child: Icon(
            icn,
            color: Color(0xff325288),
            size: size,
          ),
        ),
      ),
    ),
  );
}

Widget custom_txt2_button(txt, double size, width, val) {
  return GestureDetector(
      onTap: () {
        equationController.equationcreation(val);
      },
      child: Card(
        color: Colors.white,
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
        child: Container(
          height: 55,
          width: 55,
          child: Center(
            child: Text(
              txt,
              style: TextStyle(
                  fontSize: size, fontWeight: width, color: Color(0xff24A19C)),
            ),
          ),
        ),
      ));
}
