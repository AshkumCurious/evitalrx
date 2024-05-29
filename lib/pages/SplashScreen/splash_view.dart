import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../theme/app_colors.dart';
import 'splash_controller.dart';
import 'widgets/splash_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) => GetBuilder<SplashController>(
      builder: (controller) => SafeArea(
            child: Scaffold(
              backgroundColor: AppColors.primaryYellow,
              body: SplashWidget(
                controller: controller,
              ),
            ),
          ));
}
