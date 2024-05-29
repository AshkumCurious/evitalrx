import 'package:evitalrx/pages/homeScreen/homescreen_binding.dart';
import 'package:evitalrx/pages/homeScreen/homescreen_view.dart';
import 'package:evitalrx/pages/loginScreen/login_binding.dart';
import 'package:evitalrx/pages/loginScreen/login_view.dart';
import 'package:get/get.dart';

import '../pages/SplashScreen/splash_binding.dart';
import '../pages/SplashScreen/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  static var fadeTransitionDuration = const Duration(milliseconds: 350);
  static var cupertinoTransitionDuration = const Duration(milliseconds: 400);

  static const initial = Routes.splash;

  static final pages = [
    GetPage<SplashScreen>(
        name: Routes.splash,
        page: SplashScreen.new,
        transition: Transition.fadeIn,
        binding: SplashBinding(),
        transitionDuration: fadeTransitionDuration),
    GetPage<HomeScreen>(
      name: Routes.home,
      page: HomeScreen.new,
      transition: Transition.fadeIn,
      binding: HomeBinding(),
    ),
    GetPage<LoginScreen>(
        name: Routes.login,
        page: LoginScreen.new,
        transition: Transition.fadeIn,
        binding: LoginBinding(),
        transitionDuration: fadeTransitionDuration),
  ];
}
