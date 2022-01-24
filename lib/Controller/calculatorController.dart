// ignore_for_file: unnecessary_overrides

import 'package:calculator/Presentation/category.dart';
import 'package:calculator/Presentation/category2.dart';
import 'package:calculator/Presentation/homepage.dart';
import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorController extends GetxController {
  var equation = "".obs;
  var answer = "".obs;
  var homeicon = true.obs;
  var categoryicon = false.obs;
  var moneyicon = false.obs;
  List experssion = ["/", "%", "-", "+", "*", "%"];
  // @override
  // void onInit() {

  //   super.onInit();
  // }

  pagechange(String pagename) {
    if (pagename == "home") {
      homeicon.value = true;
      categoryicon.value = false;
      moneyicon.value = false;
      Get.to(() => const Homepage());
    } else if (pagename == "category") {
      homeicon.value = false;
      categoryicon.value = true;
      moneyicon.value = false;
      Get.to(() => const CategoryPage());
    } else if (pagename == "money") {
      homeicon.value = false;
      categoryicon.value = false;
      moneyicon.value = true;
      Get.to(() => const Category2Page());
    }
  }

  equationcreation(String value) {
    if (value == "AC") {
      equation.value = '';
      answer.value = "";
    } else if (value == "back") {
      if (equation.value != "") {
        equation.value = equation.value.substring(0, equation.value.length - 1);
      }
    } else if (value == "." && equation.value == "") {
      equation.value = "0.";
    } else if (value != "=" ) {
      equation.value = equation.value + value;
    } else if (value == "=" &&
        equation.value.isNotEmpty &&
        experssion.contains(equation.value[0]) == false) {
      Parser p = Parser();
      Expression exp = p.parse(equation.value);
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      answer.value = eval.toString();
    }
    else{
      answer.value="Please enter valid input";
    }
 
  }
}
