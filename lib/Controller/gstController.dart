import 'package:get/get.dart';

class gstController extends GetxController {
  var originaldata = '0'.obs;
  var finalprice = '0'.obs;
  var gst3 = true.obs;
  var gst5 = false.obs;
  var gst12 = false.obs;
  var gst18 = false.obs;
  var gst28 = false.obs;
  var gstvalue = "3".obs;
  var csgst = '0'.obs;

  checkgsttype(value) {
    gstvalue.value = value.toString().substring(0, value.toString().length - 1);
    if(originaldata.value.length>=1)
    {
       gstcalculate();
    }
     
    
    if (value == "3%") {
      gst3.value = true;
      gst5.value = false;
      gst12.value = false;
      gst18.value = false;
      gst28.value = false;
    }  if (value == "5%") {
      gst3.value = false;
      gst5.value = true;
      gst12.value = false;
      gst18.value = false;
      gst28.value = false;
    } if (value == "12%") {
      gst3.value = false;
      gst5.value = false;
      gst12.value = true;
      gst18.value = false;
      gst28.value = false;
    }  if (value == "18%") {
      gst3.value = false;
      gst5.value = false;
      gst12.value = false;
      gst18.value = true;
      gst28.value = false;
    } if (value == "28%") {
      gst3.value = false;
      gst5.value = false;
      gst12.value = false;
      gst18.value = false;
      gst28.value = true;
    }
  }

  gstcalculate() {
    finalprice.value = (double.parse(originaldata.value) +
            (double.parse(originaldata.value) * int.parse(gstvalue.value)) /
                100)
        .toString();

    csgst.value = ((int.parse(gstvalue.value) / 2) *
            double.parse(originaldata.value) /
            100)
        .toString();
  }

  inputvaluechange(value) {
    if (value == "AC") {
      originaldata.value = '0';
      finalprice.value = "0";
      csgst.value = "0";
    } else if (value == "back") {
      if (originaldata.value != "") {
        originaldata.value =
            originaldata.value.substring(0, originaldata.value.length - 1);
        if (originaldata.value.isEmpty) {
          originaldata.value = "0";
          finalprice.value = "0";
          csgst.value = "0";
        }
        if (originaldata.value.length > 1) {
          gstcalculate();
        }
      }
    } else if (value == "." && originaldata.value == "") {
      originaldata.value = "0.";
      gstcalculate();
    } else if (originaldata.value.length < 25) {
      if (originaldata.value[0] == "0") {
        originaldata.value = value;
        gstcalculate();
      } else {
        originaldata.value = originaldata.value + value;
        gstcalculate();
      }
    }
  }
}
