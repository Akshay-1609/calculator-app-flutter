// ignore_for_file: prefer_const_constructors

import 'package:calculator/Controller/scaleController.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

var scale_cat = [
  "km",
  "m",
  "dm",
  "cm",
  "mm",
  "µm",
  "nm",
  "pm",
];

List fullform = [
  "Kilometer",
  "Meter",
  "Decimeter",
  "Centimeter",
  "Milimeter",
  "Micrometer",
  "Nanometer",
  "Picometer",
];

final scalecontroller = Get.put(ScaleController());

class LengthConverter extends StatelessWidget {
  const LengthConverter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xff325288),
            size: 30,
          ),
        ),
        title: Text(
          "Length Converter",
          style: TextStyle(color: Color(0xff325288), fontSize: 22),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 8, top: 15),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(() => Text(
                          scalecontroller.inputdata.value,
                          style: TextStyle(
                              color: Color(0xff31A6A2),
                              fontSize: 26,
                              fontWeight: FontWeight.w400),
                        )),
                    SizedBox(
                      height: 2,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(() => Text(
                          scalecontroller.inputfullform.value,
                          maxLines: 1,
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        )),
                    SizedBox(
                      width: 100,
                      child: Obx(() => DropdownButton(
                            value: scalecontroller.inputdropdown.value,
                            onChanged: (newvalue) {},
                            items: scale_cat
                                .map((String e) => DropdownMenuItem(
                                      onTap: () {
                                        int x = scale_cat.indexOf(e);
                                        scalecontroller.inputselectvalue(
                                            e, fullform[x]);
                                      },
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
                          )),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(() => Text(
                          scalecontroller.outputdata.value,
                          maxLines: 3,
                          style: TextStyle(
                              color: Color(0xff31A6A2),
                              fontSize: 26,
                              fontWeight: FontWeight.w400),
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(() => Text(
                          scalecontroller.outputfullform.value,
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        )),
                    SizedBox(
                      width: 100,
                      child: Obx(() => DropdownButton(
                            value: scalecontroller.outputdropdown.value,
                            onChanged: (newvalue) {},
                            items: scale_cat
                                .map((String e) => DropdownMenuItem(
                                      onTap: () {
                                        int x = scale_cat.indexOf(e);
                                        scalecontroller.outputselectvalue(
                                            e, fullform[x]);
                                      },
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          e,
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black),
                                        ),
                                      ),
                                      value: e,
                                    ))
                                .toList(),
                          )),
                    )
                  ],
                ),
              ],
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
                      GestureDetector(
                        onTap: (){
                          scalecontroller.inputvaluechange("AC");
                        },
                        child: Container(
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
                      ),
                      GestureDetector(
                        onTap: (){
                           scalecontroller.inputvaluechange("back");
                        },
                        child: Container(
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
                        ),
                      )
                    ],
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
Widget custom_txt_button(txt, double size, width) {
  return GestureDetector(
      onTap: () {
        scalecontroller.inputvaluechange(txt);
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
                  fontSize: size, fontWeight: width, color: Color(0xff31A6A2)),
            ),
          ),
        ),
      ));
}
