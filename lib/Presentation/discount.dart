// ignore_for_file: prefer_const_constructors

import 'package:calculator/Controller/discountController.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

final discountcontroller = Get.put(DiscountController());

class DiscountPage extends StatelessWidget {
  const DiscountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15))),
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xff325288),
            size: 23,
          ),
        ),
        title: Text(
          "Discount",
          style: TextStyle(color: Color(0xff325288), fontSize: 22),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 8, top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    discountcontroller.originalchange();
                  },
                  child: Text(
                    "Original Price:",
                    style: TextStyle(
                        color: Color(0xff31A6A2),
                        fontSize: 23,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Obx(() => GestureDetector(
                    onTap: () {
                      discountcontroller.originalchange();
                    },
                    child: Container(
                       height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff325288),width: 1.8),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Center(
                        child: Text(
                          discountcontroller.originalprice.value,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ))),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    discountcontroller.discountchange();
                  },
                  child: Text(
                    "Discount(% off)",
                    style: TextStyle(
                        color: Color(0xff31A6A2),
                        fontSize: 23,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Obx(() => GestureDetector(
                    onTap: () {
                      discountcontroller.discountchange();
                    },
                    child: Container(
                       height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff325288),width: 1.8),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Center(
                        child: Text(
                          discountcontroller.discountprice.value,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ))),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
              child: Obx(() => Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    elevation: 5,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color(0xff325288),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "You save:",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            discountcontroller.saveamout.value,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ))),
          SizedBox(
            height: 90,
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
                      onTap: () {
                        discountcontroller.inputvaluechange("AC");
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
                      onTap: () {
                        discountcontroller.inputvaluechange("back");
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
    );
  }
}

Widget custom_txt_button(txt, double size, width) {
  return GestureDetector(
      onTap: () {
        discountcontroller.inputvaluechange(txt);
      },
      child: Card(
        color: Colors.white,
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
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
