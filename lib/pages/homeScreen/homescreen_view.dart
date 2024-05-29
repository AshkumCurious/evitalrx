
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'homescreen_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return SafeArea(child: Scaffold());
    });
  }
}
