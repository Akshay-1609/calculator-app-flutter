// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AgePage extends StatelessWidget {
  const AgePage({Key? key}) : super(key: key);

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
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(), // Refer step 1
                        firstDate: DateTime(1900),
                        lastDate: DateTime(2050),
                      );
                    },
                    child: IgnorePointer(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Your Date",
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
                  child: IgnorePointer(
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 240,
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
                            Text(
                              "11",
                              style:
                                  TextStyle(fontSize: 60, color: Color(0xff31A6A2)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 10),
                              child: Text(
                                "Years",
                                style: TextStyle(color: Colors.white, fontSize: 30),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "5 months | 6 days",
                          style: TextStyle(color: Colors.white, fontSize: 19,fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                   Divider(  
                      color: Color(0xff31A6A2),
                      thickness: 1.5,
                    )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
