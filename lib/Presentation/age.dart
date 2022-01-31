// ignore_for_file: prefer_const_constructors
import 'package:calculator/Presentation/widgets/category_widget.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final DateTime now = DateTime.now();
var formatter = new DateFormat('dd-M-yyyy');

class AgePage extends StatelessWidget {
  const AgePage({Key? key}) : super(key: key);

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
            size: 23,
          ),
        ),
        title: Text(
          "Age",
          style: TextStyle(color: Color(0xff325288), fontSize: 22),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Date of Birth",
                  style: TextStyle(
                      color: Color(0xff325288),
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                Container(
                  width: 120,
                  child: InkWell(
                    onTap: () {
                      _selectDate(context);
                    },
                    child: IgnorePointer(
                      child: TextFormField(
                        style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600),
                        controller: categorycontroller.selectedDateController,
                        decoration: InputDecoration(
                          hintText: "Enter Date",
                          enabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Today",
                  style: TextStyle(
                      color: Color(0xff325288),
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                Container(
                  width: 120,
                  child: Text(now.toString().substring(0, 10),style:  TextStyle(fontSize: 19,fontWeight: FontWeight.w600),),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 250,
            width: 350,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Color(0xff325288),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Age",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Obx(() => Text(
                                  categorycontroller.age_year.value,
                                  style: TextStyle(
                                      fontSize: 60, color: Color(0xff31A6A2)),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 10),
                              child: Text(
                                "Years",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Obx(() => Text(
                              "${categorycontroller.age_month.value} months | ${categorycontroller.age_day.value} days",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    color: Color(0xff31A6A2),
                    thickness: 1.5,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Obx(() => Center(
                    child: Text(
                          'Total Days: ${categorycontroller.age_total_day.value}',
                          style: TextStyle(color: Colors.white,fontSize: 16),
                        ),
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

_selectDate(BuildContext ctx) async {
  try{
  DateTime nowyear = DateTime.now();
  String latestyear = DateFormat('yyyy').format(nowyear);
  final DateTime? picked = await showDatePicker(
    context: ctx,
    initialDate: nowyear,
    firstDate: DateTime(1980),
    lastDate: DateTime(int.parse(latestyear) + 1),
  );
  if (picked != null && picked != now)
    categorycontroller.selectedDateController.text =
        DateFormat('dd-M-yyyy').format(picked);
  categorycontroller
      .agecalculation(categorycontroller.selectedDateController.text);
}
catch(e)
{

}

}
