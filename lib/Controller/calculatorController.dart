// ignore_for_file: unnecessary_overrides

import 'package:calculator/Presentation/category.dart';
import 'package:calculator/Presentation/category2.dart';
import 'package:calculator/Presentation/homepage.dart';
import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorController extends GetxController {
  var equation = "".obs;
  var answer = "".obs;
  // @override
  // void onInit() {

  //   super.onInit();
  // }

  pagechange(String pagename) {
    if (pagename == "home") {
      Get.to(() => const Homepage());
    } else if (pagename == "category") {
      Get.to(() => const CategoryPage());
    } else if (pagename == "money") {
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
    } else if (value != "=") {
      equation.value = equation.value + value;
    } else if (value == "=" && equation.value.length > 0) {
      Parser p = Parser();
      Expression exp = p.parse(equation.value);
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      answer.value = eval.toString();
    }
    print(equation.value);
    print(answer.value);
  }
}
