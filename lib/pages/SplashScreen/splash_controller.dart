import 'package:get/get.dart';

import '../../navigators/navigators.dart';

class SplashController extends GetxController {
  void navigateTo() async {
    Future.delayed(
      const Duration(seconds: 3),
      NavigateTo.goToLogin,
    );
  }

  @override
  onInit() async {
    navigateTo();
    super.onInit();
  }
}
