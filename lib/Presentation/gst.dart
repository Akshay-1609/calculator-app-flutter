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
          "Discount",
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
                  "Original Price",
                  style: TextStyle(
                      color: Color(0xff31A6A2),
                      fontSize: 23,
                      fontWeight: FontWeight.w400),
                ),
                Obx(() => Text(gstcontroller.originaldata.value))
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
                    Obx(() => custom_container("3%", gstcontroller.gst3.value)),
                    SizedBox(
                      width: 2,
                    ),
                    Obx(() => custom_container("5%", gstcontroller.gst5.value)),
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
            padding: const EdgeInsets.only(left: 15, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "Final Price",
                  style: TextStyle(
                      color: Color(0xff31A6A2),
                      fontSize: 23,
                      fontWeight: FontWeight.w400),
                ),
                Obx(()=>Text(gstcontroller.finalprice.value))
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 20,
          ),
          Center(child: 
          Obx(()=>Text("CGST/SGST: ${gstcontroller.csgst.value}"))
          ),
          SizedBox(
            height: 140,
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
