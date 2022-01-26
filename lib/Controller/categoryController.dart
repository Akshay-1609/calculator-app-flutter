// ignore_for_file: prefer_const_constructors

import 'package:calculator/Presentation/age.dart';
import 'package:calculator/Presentation/discount.dart';
import 'package:calculator/Presentation/lengthconverter.dart';
import 'package:calculator/Presentation/mass.dart';
import 'package:calculator/Presentation/speed.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CategoryController extends GetxController {
  @override
  void onInit() {
    selectedDateController.text = '';

    super.onInit();
  }



  var selectedDateController = TextEditingController().obs();
  var age_year='0'.obs;
  var age_month='0'.obs;
  var age_day='0'.obs;
  var age_total_day='0'.obs;

  categorypage(String val) {
    if (val == "age") {
      Get.to(() => AgePage());
    } else if (val == "speed") {
      Get.to(() => SpeedPage());
    } else if (val == "discount") {
      Get.to(() => DiscountPage());
    } else if (val == "scale") {
      Get.to(() => LengthConverter());
    } else if (val == "mass") {
      Get.to(() => Massconverter());
    }
  }

  agecalculation(birthDateString)
  {
     String datePattern = "dd-MM-yyyy";

  DateTime birthDate = DateFormat(datePattern).parse(birthDateString);
  DateTime today = DateTime.now();

  age_year.value = (today.year - birthDate.year).toString();
  age_month.value = (today.month - birthDate.month).toString();
  age_day.value = (today.day-birthDate.day).toString();
   if (int.parse(age_month.value) < 0 || (int.parse(age_month.value) == 0 && int.parse(age_day.value) < 0)) { 
       
         age_year.value= (int.parse(age_year.value)-1).toString();
        age_month.value= (int.parse(age_month.value) +(int.parse(age_day.value) < 0 ? 11 : 12)).toString(); 
      } 
      if (int.parse(age_day.value) < 0) { 
        final monthAgo = DateTime(today.year, today.month - 1, birthDate.day); 
        age_day.value = (today.difference(monthAgo).inDays + 1).toString(); 
      } 
  age_total_day.value=(today.difference(birthDate).inHours/24).round().toString();
  
  } 
}