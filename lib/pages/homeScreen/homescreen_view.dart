import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/app_paddings.dart';
import 'homescreen_controller.dart';
import 'widgets/homescreen_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
          centerTitle: true,
        ),
        body: Padding(
          padding: AppPadding.mainPadding,
          child: HomeScreenWidget(controller: controller),
        ),
      ));
    });
  }
}
