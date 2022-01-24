// ignore_for_file: prefer_const_constructors

import 'package:calculator/Controller/calculatorController.dart';
import 'package:calculator/Presentation/navbar.dart';
import 'package:calculator/Presentation/widgets/category2_widget.dart';
import 'package:calculator/Presentation/widgets/category_widget.dart';
import 'package:calculator/Presentation/widgets/home_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final equationController = Get.put(CalculatorController());

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: TabBar(
            unselectedLabelColor: Colors.grey,
            labelColor: Color(0xff325288),
indicatorColor: Colors.transparent,
            // ignore: prefer_const_literals_to_create_immutables
            tabs: [
              Tab(
                  icon: Icon(
                Icons.home,
                size: 35,
              )),
              Tab(
                  icon: Icon(
                Icons.grid_view_rounded,
                size: 35,
              )),
              Tab(icon: Icon(Icons.monetization_on_sharp, size: 35)),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
          Homepage_widget(),
          Category_widget(),
          Caterory2_widget()
        ],),
      ),
    );
  }
}
