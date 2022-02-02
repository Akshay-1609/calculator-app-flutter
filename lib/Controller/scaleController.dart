import 'package:get/get.dart';

class ScaleController extends GetxController {
  var inputdata = '0'.obs;
  var outputdata = '0'.obs;
  var inputdropdown = 'km'.obs;
  var outputdropdown = 'km'.obs;
  var inputfullform = "Kilometer".obs;
  var outputfullform = "Kilometer".obs;
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
      inputdata.value = '0';
      outputdata.value = "0";
    } else if (value == "back") {
      if (inputdata.value != "") {
        inputdata.value =
            inputdata.value.substring(0, inputdata.value.length - 1);
        if (inputdata.value.isEmpty) {
          outputdata.value = "0";
          inputdata.value="0";
        }
        if (inputdata.value.length > 1) {
          speedcalculation();
        }
      }
    } else if (value == "." && inputdata.value == "") {
      inputdata.value = "0.";
      speedcalculation();
    } else if (inputdata.value.length < 25) {
      if (inputdata.value[0] == "0") {
        inputdata.value = value;
        speedcalculation();
      } else {
        inputdata.value = inputdata.value + value;
        speedcalculation();
      }
    }
  }

  speedcalculation() {
    if (inputdata.value == "0") {
      outputdata.value = "0";
    } else if (inputdropdown.value == outputdropdown.value) {
      outputdata.value = inputdata.value;
    }
    // km
    else if (inputdropdown.value == "km" && outputdropdown.value == "m") {
      outputdata.value = (double.parse(inputdata.value) * 1000).toString();
    } else if (inputdropdown.value == "km" && outputdropdown.value == "dm") {
      outputdata.value = (double.parse(inputdata.value) * 10000).toString();
    } else if (inputdropdown.value == "km" && outputdropdown.value == "cm") {
      outputdata.value = (double.parse(inputdata.value) * 100000).toString();
    } else if (inputdropdown.value == "km" && outputdropdown.value == "mm") {
      outputdata.value = (double.parse(inputdata.value) * 1000000).toString();
    } else if (inputdropdown.value == "km" && outputdropdown.value == "µm") {
      outputdata.value = (double.parse(inputdata.value) * 1e9).toString();
    } else if (inputdropdown.value == "km" && outputdropdown.value == "nm") {
      outputdata.value = (double.parse(inputdata.value) * 1e12).toString();
    } else if (inputdropdown.value == "km" && outputdropdown.value == "pm") {
      outputdata.value = (double.parse(inputdata.value) * 1e15).toString();
    }

    //  m
    else if (inputdropdown.value == "m" && outputdropdown.value == "km") {
      outputdata.value = (double.parse(inputdata.value) * 0.001).toString();
    } else if (inputdropdown.value == "m" && outputdropdown.value == "dm") {
      outputdata.value = (double.parse(inputdata.value) * 10).toString();
    } else if (inputdropdown.value == "m" && outputdropdown.value == "cm") {
      outputdata.value = (double.parse(inputdata.value) * 100).toString();
    } else if (inputdropdown.value == "m" && outputdropdown.value == "mm") {
      outputdata.value = (double.parse(inputdata.value) * 1000).toString();
    } else if (inputdropdown.value == "m" && outputdropdown.value == "µm") {
      outputdata.value = (double.parse(inputdata.value) * 1000000).toString();
    } else if (inputdropdown.value == "m" && outputdropdown.value == "nm") {
      outputdata.value = (double.parse(inputdata.value) * 1e9).toString();
    } else if (inputdropdown.value == "m" && outputdropdown.value == "pm") {
      outputdata.value = (double.parse(inputdata.value) * 1e12).toString();
    }

    //  dm
    else if (inputdropdown.value == "dm" && outputdropdown.value == "km") {
      outputdata.value = (double.parse(inputdata.value) * 0.0001).toString();
    } else if (inputdropdown.value == "dm" && outputdropdown.value == "m") {
      outputdata.value = (double.parse(inputdata.value) * 0.1).toString();
    } else if (inputdropdown.value == "dm" && outputdropdown.value == "cm") {
      outputdata.value = (double.parse(inputdata.value) * 10).toString();
    } else if (inputdropdown.value == "dm" && outputdropdown.value == "mm") {
      outputdata.value = (double.parse(inputdata.value) * 100).toString();
    } else if (inputdropdown.value == "dm" && outputdropdown.value == "µm") {
      outputdata.value = (double.parse(inputdata.value) * 100000).toString();
    } else if (inputdropdown.value == "dm" && outputdropdown.value == "nm") {
      outputdata.value = (double.parse(inputdata.value) * 100000000).toString();
    } else if (inputdropdown.value == "dm" && outputdropdown.value == "pm") {
      outputdata.value = (double.parse(inputdata.value) * 1e11).toString();
    }
    // cm
    else if (inputdropdown.value == "cm" && outputdropdown.value == "km") {
      outputdata.value = (double.parse(inputdata.value) * 1e-5).toString();
    } else if (inputdropdown.value == "cm" && outputdropdown.value == "dm") {
      outputdata.value = (double.parse(inputdata.value) * .10).toString();
    } else if (inputdropdown.value == "cm" && outputdropdown.value == "m") {
      outputdata.value = (double.parse(inputdata.value) * 0.01).toString();
    } else if (inputdropdown.value == "cm" && outputdropdown.value == "mm") {
      outputdata.value = (double.parse(inputdata.value) * 10).toString();
    } else if (inputdropdown.value == "cm" && outputdropdown.value == "µm") {
      outputdata.value = (double.parse(inputdata.value) * 10000).toString();
    } else if (inputdropdown.value == "cm" && outputdropdown.value == "nm") {
      outputdata.value = (double.parse(inputdata.value) * 10000000).toString();
    } else if (inputdropdown.value == "cm" && outputdropdown.value == "pm") {
      outputdata.value = (double.parse(inputdata.value) * 1e10).toString();
    }
    // mm

    else if (inputdropdown.value == "mm" && outputdropdown.value == "km") {
      outputdata.value = (double.parse(inputdata.value) * 1e-6).toString();
    } else if (inputdropdown.value == "mm" && outputdropdown.value == "dm") {
      outputdata.value = (double.parse(inputdata.value) * 0.01).toString();
    } else if (inputdropdown.value == "mm" && outputdropdown.value == "cm") {
      outputdata.value = (double.parse(inputdata.value) * 0.1).toString();
    } else if (inputdropdown.value == "mm" && outputdropdown.value == "m") {
      outputdata.value = (double.parse(inputdata.value) * 0.001).toString();
    } else if (inputdropdown.value == "mm" && outputdropdown.value == "µm") {
      outputdata.value = (double.parse(inputdata.value) * 1000).toString();
    } else if (inputdropdown.value == "mm" && outputdropdown.value == "nm") {
      outputdata.value = (double.parse(inputdata.value) * 1000000).toString();
    } else if (inputdropdown.value == "mm" && outputdropdown.value == "pm") {
      outputdata.value = (double.parse(inputdata.value) * 1e9).toString();
    }

    // µm
    else if (inputdropdown.value == "µm" && outputdropdown.value == "km") {
      outputdata.value = (double.parse(inputdata.value) * 1e-9).toString();
    } else if (inputdropdown.value == "µm" && outputdropdown.value == "dm") {
      outputdata.value = (double.parse(inputdata.value) * 1e-5).toString();
    } else if (inputdropdown.value == "µm" && outputdropdown.value == "cm") {
      outputdata.value = (double.parse(inputdata.value) * 0.0001).toString();
    } else if (inputdropdown.value == "µm" && outputdropdown.value == "m") {
      outputdata.value = (double.parse(inputdata.value) * 1e-6).toString();
    } else if (inputdropdown.value == "µm" && outputdropdown.value == "mm") {
      outputdata.value = (double.parse(inputdata.value) * 0.001).toString();
    } else if (inputdropdown.value == "µm" && outputdropdown.value == "nm") {
      outputdata.value = (double.parse(inputdata.value) * 1000).toString();
    } else if (inputdropdown.value == "µm" && outputdropdown.value == "pm") {
      outputdata.value = (double.parse(inputdata.value) * 1000000).toString();
    }

    // nm
    else if (inputdropdown.value == "nm" && outputdropdown.value == "km") {
      outputdata.value = (double.parse(inputdata.value) * 1e-12).toString();
    } else if (inputdropdown.value == "nm" && outputdropdown.value == "m") {
      outputdata.value = (double.parse(inputdata.value) * 1e-9).toString();
    } else if (inputdropdown.value == "nm" && outputdropdown.value == "dm") {
      outputdata.value = (double.parse(inputdata.value) * 1e-8).toString();
    } else if (inputdropdown.value == "nm" && outputdropdown.value == "cm") {
      outputdata.value = (double.parse(inputdata.value) * 1e-7).toString();
    } else if (inputdropdown.value == "nm" && outputdropdown.value == "mm") {
      outputdata.value = (double.parse(inputdata.value) * 1e-6).toString();
    } else if (inputdropdown.value == "nm" && outputdropdown.value == "µm") {
      outputdata.value = (double.parse(inputdata.value) * 0.001).toString();
    } else if (inputdropdown.value == "nm" && outputdropdown.value == "pm") {
      outputdata.value = (double.parse(inputdata.value) * 1000).toString();
    }

    // pm

    else if (inputdropdown.value == "pm" && outputdropdown.value == "km") {
      outputdata.value = (double.parse(inputdata.value) * 1e-15).toString();
    } else if (inputdropdown.value == "pm" && outputdropdown.value == "m") {
      outputdata.value = (double.parse(inputdata.value) * 1e-12).toString();
    } else if (inputdropdown.value == "pm" && outputdropdown.value == "dm") {
      outputdata.value = (double.parse(inputdata.value) * 1e-11).toString();
    } else if (inputdropdown.value == "pm" && outputdropdown.value == "cm") {
      outputdata.value = (double.parse(inputdata.value) * 1e-10).toString();
    } else if (inputdropdown.value == "pm" && outputdropdown.value == "mm") {
      outputdata.value = (double.parse(inputdata.value) * 1e-9).toString();
    } else if (inputdropdown.value == "pm" && outputdropdown.value == "µm") {
      outputdata.value = (double.parse(inputdata.value) * 1e-61).toString();
    } else if (inputdropdown.value == "pm" && outputdropdown.value == "nm") {
      outputdata.value = (double.parse(inputdata.value) * 0.001).toString();
    }
  }
}
