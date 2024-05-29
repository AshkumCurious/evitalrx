import 'package:evitalrx/pages/SplashScreen/splash_controller.dart';
import 'package:flutter/material.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({super.key,required this.controller});
  final SplashController controller;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(Icons.add),
    );
  }
}
