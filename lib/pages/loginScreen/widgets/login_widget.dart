import 'package:evitalrx/navigators/navigators.dart';
import 'package:evitalrx/widgets/app_button.dart';
import 'package:evitalrx/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../widgets/snackbar.dart';
import '../login_controller.dart';

class LoginScreenWidget extends StatelessWidget {
  const LoginScreenWidget({super.key, required this.controller});
  final LoginController controller;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        SizedBox(
          height: 80.h,
        ),
        AppTextField.appTextField(
            label: "Mobile Number",
            isNumber: true,
            controller: controller.mobileController,
            validator: (value) {
              return controller.validateEmail(value!);
            },
            key: controller.mobileKey,
            onChanged: (_) {}),
        SizedBox(
          height: 40.h,
        ),
        AppTextField.appTextField(
          label: "Password",
          key: controller.passKey,
          validator: (value) {
            return controller.validatePassword(value!);
          },
          controller: controller.passController,
          onChanged: (p0) {},
        ),
        SizedBox(
          height: 100.h,
        ),
        AppButton.appButton(
            buttonText: "Sign In",
            onPressed: () {
              if (controller.mobileKey.currentState!.validate() &&
                  controller.passKey.currentState!.validate()) {
                if (controller.mobileController.text != "9033006262" ||
                    controller.passController.text != "eVital@12") {
                  getSnackBar("Entered Number or Password is incorrect", false);
                } else {
                  NavigateTo.goToHome();
                  getSnackBar("Signed In Successfully", true);
                }
              }
            })
      ],
    ));
  }
}
