// ignore_for_file: prefer_const_constructors

import 'package:calculator/Presentation/speed.dart';
import 'package:flutter/material.dart';

var len_cat = [
  "km",
  "m",
  "dm",
  "cm",
  "mm",
  "µm",
  "nm",
  "pm",
];

class LengthConverter extends StatelessWidget {
  const LengthConverter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: Color(0xff325288),
          size: 30,
        ),
        title: Text(
          "Length Converter",
          style: TextStyle(color: Color(0xff325288), fontSize: 22),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "1",
                  style: TextStyle(
                      color: Color(0xff31A6A2),
                      fontSize: 26,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 100,
                  child: DropdownButton(
                    onChanged: (newvalue) {},
                    items: len_cat
                        .map((String e) => DropdownMenuItem(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  e,
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                              value: e,
                            ))
                        .toList(),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "1",
                  style: TextStyle(
                      color: Color(0xff31A6A2),
                      fontSize: 26,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 100,
                  child: DropdownButton(
                    onChanged: (newvalue) {},
                    items: len_cat
                        .map((String e) => DropdownMenuItem(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  e,
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                              value: e,
                            ))
                        .toList(),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    custom_txt_button("7", 35, FontWeight.w500),
                    custom_txt_button("4", 35, FontWeight.w500),
                    custom_txt_button("1", 35, FontWeight.w500),
                    custom_txt_button(".", 35, FontWeight.w500)
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    custom_txt_button("8", 35, FontWeight.w500),
                    custom_txt_button("5", 35, FontWeight.w500),
                    custom_txt_button("2", 35, FontWeight.w500),
                    custom_txt_button("0", 35, FontWeight.w500)
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    custom_txt_button("9", 35, FontWeight.w500),
                    custom_txt_button("6", 35, FontWeight.w500),
                    custom_txt_button("3", 35, FontWeight.w500),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 140,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Color(0xff31A6A2),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Text(
                        "AC",
                        style: TextStyle(
                            color: Color(0xff325288),
                            fontSize: 25,
                            fontWeight: FontWeight.w500),
                      )),
                    ),
                    Container(
                      height: 140,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Color(0xff31A6A2),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Icon(
                        Icons.backspace_rounded,
                        color: Color(0xff325288),
                      )),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
