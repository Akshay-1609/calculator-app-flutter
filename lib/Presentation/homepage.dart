// ignore_for_file: prefer_const_constructors

import 'package:calculator/Controller/calculatorController.dart';
import 'package:calculator/Presentation/category.dart';
import 'package:calculator/Presentation/navbar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
final equationController = Get.put(CalculatorController());
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
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10,left: 10),
                    child: Obx(()=>Text(
                       equationController.equation.value,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w600),
                    )) ,
                  ),
                  SizedBox(height: 10,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 10),
                         child: Text(
                              "Answer:",
                                maxLines: 3,
                                style: TextStyle(
                                    fontSize: 23,color: Colors.black45, fontWeight: FontWeight.w600),
                              ),
                       ),
                       Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Obx(()=>Text(
                              equationController.answer.value,
                              maxLines: 3,
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w600),
                            )) ,
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
                        custom_txt_button("AC", 25, FontWeight.w500,"AC"),
                        custom_icon_button(Icons.backspace_rounded, 30,"back"),
                        custom_txt_button("%", 30, FontWeight.w500,"%"),
                        custom_txt_button("/", 30, FontWeight.w500,"/")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        custom_txt2_button("7", 30, FontWeight.w700,"7"),
                        custom_txt2_button("8", 30, FontWeight.w700,"8"),
                        custom_txt2_button("9", 30, FontWeight.w700,"9"),
                        custom_txt_button("x", 30, FontWeight.w500,"*")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        custom_txt2_button("4", 30, FontWeight.w700,"4"),
                        custom_txt2_button("5", 30, FontWeight.w700,"5"),
                        custom_txt2_button("6", 30, FontWeight.w700,"6"),
                        custom_txt_button("-", 30, FontWeight.w600,"-")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        custom_txt2_button("1", 30, FontWeight.w700,"1"),
                        custom_txt2_button("2", 30, FontWeight.w700,"2"),
                        custom_txt2_button("3", 30, FontWeight.w700,"3"),
                        custom_txt_button("+", 30, FontWeight.w600,"+")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        custom_txt2_button(".", 30, FontWeight.w700,"."),
                        custom_txt2_button("0", 30, FontWeight.w700,"0"),
                        custom_txt2_button("=", 30, FontWeight.w700,"="),
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



Widget custom_txt_button(txt, double size, width,val) {
  return GestureDetector(
    onTap: (){
      equationController.equationcreation(val);
      
    },
      child: Text(
    txt,
    style:
        TextStyle(fontSize: size, fontWeight: width, color: Color(0xff325288)),
  ));
}

Widget custom_icon_button(icn, double size,val) {
  return IconButton(
      onPressed: () {
         equationController.equationcreation(val);
      },
      icon: Icon(
        icn,
        color: Color(0xff325288),
        size: size,
      ));
}

Widget custom_txt2_button(txt, double size, width,val) {
  return GestureDetector(
    onTap: (){
      equationController.equationcreation(val);
    },
      child: Text(
    txt,
    style:
        TextStyle(fontSize: size, fontWeight: width, color: Color(0xff24A19C)),
  ));
}
