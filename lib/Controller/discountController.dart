import 'package:calculator/Presentation/discount.dart';
import 'package:get/get.dart';

class DiscountController extends GetxController {
  var originalprice = '0'.obs;
  var discountprice = '0'.obs;
  var originalselect = true.obs;
  var discountselect = false.obs;
  var saveamout = '0'.obs;

  originalchange() {
    originalselect.value = true;
    discountselect.value = false;
  }

  discountchange() {
    discountselect.value = true;
    originalselect.value = false;
  }

  inputvaluechange(value) {
    if (value == "AC") {
      originalprice.value = '0';
      discountprice.value = '0';
      saveamout.value = '0';
    } else if (value == "back" && originalselect.value == true) {
      if (originalprice.value != "") {
        originalprice.value =
            originalprice.value.substring(0, originalprice.value.length - 1);
        countdiscount();
        if (originalprice.value.isEmpty) {
          originalprice.value = "0";
        }
      }
    } else if (value == "back" && discountselect.value == true) {
      if (discountprice.value != "") {
        discountprice.value =
            discountprice.value.substring(0, discountprice.value.length - 1);
        countdiscount();
        if (discountprice.value.isEmpty) {
          discountprice.value = "0";
          saveamout.value = "0";
        }
      }
    } else if (originalprice.value.length < 20 &&
        originalselect.value == true) {
      if (originalprice.value[0] == "0") {
        originalprice.value = value;
        countdiscount();
      } else {
        originalprice.value = originalprice.value + value;
        countdiscount();
      }
    } else if (discountprice.value.length <= 2 &&
        discountselect.value == true &&
        value != ".") {
      if (discountprice.value[0] == "0") {
        discountprice.value = value;
        countdiscount();
      } else {
        if (int.parse(discountprice.value + value) <= 100) {
          print((int.parse(discountprice.value) + int.parse(value)).toString());
          discountprice.value = discountprice.value + value;
          countdiscount();
        }
      }
    }
  }

  countdiscount() {
    try {
      if (originalprice.value != "0" && discountprice.value != "0") {
        if (int.parse(discountprice.value) <= 100 &&
            double.parse(originalprice.value) >= 1) {
          saveamout.value = ((double.parse(originalprice.value) *
                      double.parse(discountprice.value)) /
                  100)
              .toString();
        }
      }
    } catch (e) {
      saveamout.value = 'Not vlid input';
    }
  }
}
