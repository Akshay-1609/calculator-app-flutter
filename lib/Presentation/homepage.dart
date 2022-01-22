// ignore_for_file: prefer_const_constructors

import 'package:calculator/Presentation/category.dart';
import 'package:calculator/Presentation/navbar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 70, left: 8, right: 8),
          child: Column(
            children: [
             custom_navbar(),
              SizedBox(
                height: 30,
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          "12+21",
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        custom_txt_button("AC", 25, FontWeight.w500),
                        custom_icon_button(Icons.backspace_rounded, 30),
                        custom_txt_button("%", 30, FontWeight.w500),
                        custom_txt_button("/", 30, FontWeight.w500)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        custom_txt2_button("7", 30, FontWeight.w700),
                        custom_txt2_button("8", 30, FontWeight.w700),
                        custom_txt2_button("9", 30, FontWeight.w700),
                        custom_txt_button("x", 30, FontWeight.w500)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        custom_txt2_button("4", 30, FontWeight.w700),
                        custom_txt2_button("5", 30, FontWeight.w700),
                        custom_txt2_button("6", 30, FontWeight.w700),
                        custom_txt_button("-", 30, FontWeight.w600)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        custom_txt2_button("1", 30, FontWeight.w700),
                        custom_txt2_button("2", 30, FontWeight.w700),
                        custom_txt2_button("3", 30, FontWeight.w700),
                        custom_txt_button("+", 30, FontWeight.w600)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        custom_txt2_button(".", 30, FontWeight.w700),
                        custom_txt2_button("0", 30, FontWeight.w700),
                        custom_txt2_button("=", 30, FontWeight.w700),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



Widget custom_txt_button(txt, double size, width) {
  return GestureDetector(
      child: Text(
    txt,
    style:
        TextStyle(fontSize: size, fontWeight: width, color: Color(0xff325288)),
  ));
}

Widget custom_icon_button(icn, double size) {
  return IconButton(
      onPressed: () {},
      icon: Icon(
        icn,
        color: Color(0xff325288),
        size: size,
      ));
}

Widget custom_txt2_button(txt, double size, width) {
  return GestureDetector(
      child: Text(
    txt,
    style:
        TextStyle(fontSize: size, fontWeight: width, color: Color(0xff24A19C)),
  ));
}
