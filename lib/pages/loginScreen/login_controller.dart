import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController mobileController = TextEditingController();
  TextEditingController passController = TextEditingController();
  GlobalKey<FormState> mobileKey = GlobalKey<FormState>();
  GlobalKey<FormState> passKey = GlobalKey<FormState>();

  String? validatePassword(String value) {
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(value)) {
        return 'Enter valid password';
      } else {
        return null;
      }
    }
  }

  String? validateEmail(String value) {
    const pattern = r"(^[6-9]\d{9}$)";
    RegExp regex = RegExp(pattern);
    if (value.isEmpty) {
      return 'Please enter mobile number';
    } else {
      if (!regex.hasMatch(value)) {
        return 'Enter valid number';
      } else {
        return null;
      }
    }
  }
}
