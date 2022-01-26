import 'package:calculator/Presentation/speed.dart';
import 'package:get/get.dart';

class speedcontroller extends GetxController {
  var inputdata = ''.obs;
  var outputdata = ''.obs;
  var inputdropdown = 'm/s'.obs;
  var outputdropdown = 'm/s'.obs;
  var inputfullform = "Meter per second".obs;
  var outputfullform = "Meter per second".obs;
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
    } else if (inputdropdown.value == "m/s" && outputdropdown.value == "km/h") {
      outputdata.value = (double.parse(inputdata.value) * 3.6).toString();
    } else if (inputdropdown.value == "m/s" && outputdropdown.value == "km/s") {
      outputdata.value = (double.parse(inputdata.value) * 0.001).toString();
    } else if (inputdropdown.value == "m/s" && outputdropdown.value == "mph") {
      outputdata.value = (double.parse(inputdata.value) * 2.2369).toString();
    } else if (inputdropdown.value == "m/s" && outputdropdown.value == "fps") {
      outputdata.value = (double.parse(inputdata.value) * 3.280).toString();
    }
    //  km/h
    else if (inputdropdown.value == "km/h" && outputdropdown.value == "m/s") {
      outputdata.value = (double.parse(inputdata.value) * 0.277).toString();
    } else if (inputdropdown.value == "km/h" &&
        outputdropdown.value == "km/s") {
      outputdata.value = (double.parse(inputdata.value) * 0.000277).toString();
    } else if (inputdropdown.value == "km/h" && outputdropdown.value == "mph") {
      outputdata.value = (double.parse(inputdata.value) * 0.621).toString();
    } else if (inputdropdown.value == "km/h" && outputdropdown.value == "fps") {
      outputdata.value = (double.parse(inputdata.value) * 0.911).toString();
    }
    //  km/s
    else if (inputdropdown.value == "km/s" && outputdropdown.value == "m/s") {
      outputdata.value = (double.parse(inputdata.value) * 1000).toString();
    } else if (inputdropdown.value == "km/s" &&
        outputdropdown.value == "km/h") {
      outputdata.value = (double.parse(inputdata.value) * 3600).toString();
    } else if (inputdropdown.value == "km/s" && outputdropdown.value == "mph") {
      outputdata.value = (double.parse(inputdata.value) * 2236.93).toString();
    } else if (inputdropdown.value == "km/s" && outputdropdown.value == "fps") {
      outputdata.value = (double.parse(inputdata.value) * 3280.84).toString();
    }
    // mph
    else if (inputdropdown.value == "mph" && outputdropdown.value == "m/s") {
      outputdata.value = (double.parse(inputdata.value) * 0.45).toString();
    } else if (inputdropdown.value == "mph" && outputdropdown.value == "km/h") {
      outputdata.value = (double.parse(inputdata.value) * 1.61).toString();
    } else if (inputdropdown.value == "mph" && outputdropdown.value == "km/s") {
      outputdata.value = (double.parse(inputdata.value) * 0.00045).toString();
    } else if (inputdropdown.value == "mph" && outputdropdown.value == "fps") {
      outputdata.value = (double.parse(inputdata.value) * 1.47).toString();
    }
    // fps

    else if (inputdropdown.value == "fps" && outputdropdown.value == "m/s") {
      outputdata.value = (double.parse(inputdata.value) * 0.30).toString();
    } else if (inputdropdown.value == "fps" && outputdropdown.value == "km/h") {
      outputdata.value = (double.parse(inputdata.value) * 1.1).toString();
    } else if (inputdropdown.value == "fps" && outputdropdown.value == "km/s") {
      outputdata.value = (double.parse(inputdata.value) * 0.0003).toString();
    } else if (inputdropdown.value == "fps" && outputdropdown.value == "mph") {
      outputdata.value = (double.parse(inputdata.value) * 0.68).toString();
    }
  }
}
