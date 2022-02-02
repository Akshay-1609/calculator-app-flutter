import 'package:calculator/Controller/gstController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final gstcontroller = Get.put(gstController());

class Gstpage extends StatelessWidget {
  const Gstpage({Key? key}) : super(key: key);

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
          "GST",
          style: TextStyle(color: Color(0xff325288), fontSize: 22),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Original Price:",
              style: TextStyle(
                  color: Color(0xff31A6A2),
                  fontSize: 23,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 3,
            ),
            Obx(() => Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff325288), width: 1.8),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                    child: Text(gstcontroller.originaldata.value,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400)),
                  ),
                )),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "GST",
                    style: TextStyle(
                        color: Color(0xff31A6A2),
                        fontSize: 23,
                        fontWeight: FontWeight.w400),
                  ),
                  Row(
                    children: [
                      Obx(() =>
                          custom_container("3%", gstcontroller.gst3.value)),
                      SizedBox(
                        width: 2,
                      ),
                      Obx(() =>
                          custom_container("5%", gstcontroller.gst5.value)),
                      SizedBox(
                        width: 2,
                      ),
                      Obx(() =>
                          custom_container("12%", gstcontroller.gst12.value)),
                      SizedBox(
                        width: 2,
                      ),
                      Obx(() =>
                          custom_container("18%", gstcontroller.gst18.value)),
                      SizedBox(
                        width: 2,
                      ),
                      Obx(() =>
                          custom_container("28%", gstcontroller.gst28.value))
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Final Price",
                    style: TextStyle(
                        color: Color(0xff31A6A2),
                        fontSize: 23,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Obx(() => Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color(0xff325288), width: 1.8),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Center(
                          child: Text(gstcontroller.finalprice.value,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400)),
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 10,
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Cgst/Sgst:",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              gstcontroller.csgst.value,
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
              height: 80,
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
                          gstcontroller.inputvaluechange("AC");
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
                          gstcontroller.inputvaluechange("back");
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

Widget custom_container(txt, value) {
  return GestureDetector(
    onTap: () {
      gstcontroller.checkgsttype(txt);
    },
    child: Container(
      height: 40,
      decoration: value
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Color(0xff31A6A2))
          : BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Color(0xff31A6A2), width: 2)),
      width: 50,
      child: Center(
          child: Text(
        txt,
        style: TextStyle(color: value ? Colors.white : Colors.black),
      )),
    ),
  );
}

Widget custom_txt_button(txt, double size, width) {
  return GestureDetector(
      onTap: () {
        gstcontroller.inputvaluechange(txt);
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
