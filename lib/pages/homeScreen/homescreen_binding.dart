import 'package:evitalrx/pages/loginScreen/login_controller.dart';
import 'package:get/get.dart';

import 'homescreen_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(
      () => HomeController(),
    );
  }
}
