import 'package:get/get.dart';

class MassController extends GetxController {
  var inputdata = ''.obs;
  var outputdata = ''.obs;
  var inputdropdown = 'kg'.obs;
  var outputdropdown = 'kg'.obs;
  var inputfullform = "Kilogram".obs;
  var outputfullform = "Kilogram".obs;
  inputselectvalue(value, ff) {
    inputdropdown.value = value;
    inputfullform.value = ff;
    speedcalculation();
  }

  outputselectvalue(value, ff) {
    outputdropdown.value = value;
    outputfullform.value = ff;
    speedcalculation();
  }

  inputvaluechange(value) {
    if (value == "AC") {
      inputdata.value = '';
      outputdata.value = "";
    } else if (value == "back") {
      if (inputdata.value != "") {
        inputdata.value =
            inputdata.value.substring(0, inputdata.value.length - 1);
        if (inputdata.value.isEmpty) {
          outputdata.value = "";
        }
        if (inputdata.value.length > 1) {
          speedcalculation();
        }
      }
    } else if (value == "." && inputdata.value == "") {
      inputdata.value = "0.";
      speedcalculation();
    } else if (inputdata.value.length < 25) {
      inputdata.value = inputdata.value + value;
      speedcalculation();
    }
  }

  speedcalculation() {
    if (inputdata.value == "") {
      outputdata.value = "";
    } else if (inputdropdown.value == outputdropdown.value) {
      outputdata.value = inputdata.value;
    }
    // kg
    else if (inputdropdown.value == "kg" && outputdropdown.value == "g") {
      outputdata.value = (double.parse(inputdata.value) * 1000).toString();
    } else if (inputdropdown.value == "kg" && outputdropdown.value == "mg") {
      outputdata.value = (double.parse(inputdata.value) * 1000000).toString();
    } else if (inputdropdown.value == "kg" && outputdropdown.value == "µg") {
      outputdata.value = (double.parse(inputdata.value) * 1e9).toString();
    } else if (inputdropdown.value == "kg" && outputdropdown.value == "q") {
      outputdata.value = (double.parse(inputdata.value) * 0.01).toString();
    } else if (inputdropdown.value == "kg" && outputdropdown.value == "ct") {
      outputdata.value = (double.parse(inputdata.value) * 5000).toString();
    }

    // g
    else if (inputdropdown.value == "g" && outputdropdown.value == "kg") {
      outputdata.value = (double.parse(inputdata.value) * 0.001).toString();
    } else if (inputdropdown.value == "g" && outputdropdown.value == "mg") {
      outputdata.value = (double.parse(inputdata.value) * 1000).toString();
    } else if (inputdropdown.value == "g" && outputdropdown.value == "µg") {
      outputdata.value = (double.parse(inputdata.value) * 1000000).toString();
    } else if (inputdropdown.value == "g" && outputdropdown.value == "q") {
      outputdata.value = (double.parse(inputdata.value) * 1e-5).toString();
    } else if (inputdropdown.value == "g" && outputdropdown.value == "ct") {
      outputdata.value = (double.parse(inputdata.value) * 5).toString();
    }

   // mg
    else if (inputdropdown.value == "mg" && outputdropdown.value == "kg") {
      outputdata.value = (double.parse(inputdata.value) * 1e-6).toString();
    } else if (inputdropdown.value == "mg" && outputdropdown.value == "g") {
      outputdata.value = (double.parse(inputdata.value) * 0.001).toString();
    } else if (inputdropdown.value == "mg" && outputdropdown.value == "µg") {
      outputdata.value = (double.parse(inputdata.value) * 1000).toString();
    } else if (inputdropdown.value == "mg" && outputdropdown.value == "q") {
      outputdata.value = (double.parse(inputdata.value) * 1e-8).toString();
    } else if (inputdropdown.value == "mg" && outputdropdown.value == "ct") {
      outputdata.value = (double.parse(inputdata.value) * 0.005).toString();
    }

// µg
    else if (inputdropdown.value == "µg" && outputdropdown.value == "kg") {
      outputdata.value = (double.parse(inputdata.value) * 1e-9).toString();
    } else if (inputdropdown.value == "µg" && outputdropdown.value == "g") {
      outputdata.value = (double.parse(inputdata.value) * 1e-6).toString();
    } else if (inputdropdown.value == "µg" && outputdropdown.value == "mg") {
      outputdata.value = (double.parse(inputdata.value) * 0.001).toString();
    } else if (inputdropdown.value == "µg" && outputdropdown.value == "q") {
      outputdata.value = (double.parse(inputdata.value) * 1e-11).toString();
    } else if (inputdropdown.value == "µg" && outputdropdown.value == "ct") {
      outputdata.value = (double.parse(inputdata.value) * 5e-6).toString();
    }

    // q
    else if (inputdropdown.value == "q" && outputdropdown.value == "kg") {
      outputdata.value = (double.parse(inputdata.value) * 100).toString();
    } else if (inputdropdown.value == "q" && outputdropdown.value == "g") {
      outputdata.value = (double.parse(inputdata.value) * 100000).toString();
    } else if (inputdropdown.value == "q" && outputdropdown.value == "mg") {
      outputdata.value = (double.parse(inputdata.value) * 100000000).toString();
    } else if (inputdropdown.value == "q" && outputdropdown.value == "µg") {
      outputdata.value = (double.parse(inputdata.value) * 1e11).toString();
    } else if (inputdropdown.value == "q" && outputdropdown.value == "ct") {
      outputdata.value = (double.parse(inputdata.value) * 500000).toString();
    }

    // ct
    else if (inputdropdown.value == "ct" && outputdropdown.value == "kg") {
      outputdata.value = (double.parse(inputdata.value) * 0.00002).toString();
    } else if (inputdropdown.value == "ct" && outputdropdown.value == "g") {
      outputdata.value = (double.parse(inputdata.value) * 0.2).toString();
    } else if (inputdropdown.value == "ct" && outputdropdown.value == "mg") {
      outputdata.value = (double.parse(inputdata.value) * 200).toString();
    } else if (inputdropdown.value == "ct" && outputdropdown.value == "µg") {
      outputdata.value = (double.parse(inputdata.value) * 200000).toString();
    } else if (inputdropdown.value == "ct" && outputdropdown.value == "q") {
      outputdata.value = (double.parse(inputdata.value) * 2e-6).toString();
    }
   

   
  }
}
