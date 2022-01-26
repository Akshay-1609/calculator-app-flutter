// ignore_for_file: prefer_const_constructors

import 'package:calculator/Controller/speedcontroller.dart';
import 'package:calculator/Presentation/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

var category1 = [
  "m/s",
  "km/h",
  "km/s",
  "mph",
  "fps",
];

List fullform = [
  "Meter per second",
  "Kilometer per hour",
  "Kilometre per second",
  "Mile per hour",
  "Foot per second",
];
final SpeedController = Get.put(speedcontroller());

class SpeedPage extends StatelessWidget {
  const SpeedPage({Key? key}) : super(key: key);

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
          "Speed",
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
                          SpeedController.inputdata.value,
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
                          SpeedController.inputfullform.value,
                          maxLines: 1,
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        )),
                    SizedBox(
                      width: 100,
                      child: Obx(() => DropdownButton(
                            value: SpeedController.inputdropdown.value,
                            onChanged: (newvalue) {},
                            items: category1
                                .map((String e) => DropdownMenuItem(
                                      onTap: () {
                                        int x = category1.indexOf(e);
                                        SpeedController.inputselectvalue(
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
                          SpeedController.outputdata.value,
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
                          SpeedController.outputfullform.value,
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        )),
                    SizedBox(
                      width: 100,
                      child: Obx(() => DropdownButton(
                            value: SpeedController.outputdropdown.value,
                            onChanged: (newvalue) {},
                            items: category1
                                .map((String e) => DropdownMenuItem(
                                      onTap: () {
                                        int x = category1.indexOf(e);
                                        SpeedController.outputselectvalue(
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
              height: 150,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      custom_txt_button(
                        "7",
                        35,
                        FontWeight.w500,
                      ),
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
                        onTap: () {
                          SpeedController.inputvaluechange("AC");
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
                          SpeedController.inputvaluechange("back");
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
            SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}

Widget custom_txt_button(txt, double size, width) {
  return GestureDetector(
      onTap: () {
        SpeedController.inputvaluechange(txt);
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
