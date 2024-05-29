import 'package:evitalrx/pages/homeScreen/homescreen_controller.dart';
import 'package:evitalrx/theme/app_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({super.key, required this.controller});
  final HomeController controller;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 30,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Card(
                  shadowColor: AppColors.secondaryYellow,
                  surfaceTintColor: Colors.transparent,
                  elevation: 5,
                  margin: EdgeInsets.zero,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.primaryYellow),
                          child: CircleAvatar(
                            maxRadius: 30.0,
                            child: ClipOval(
                              child: Icon(
                                Icons.person,
                                size: 50.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ashish",
                              style: TextStyle(
                                  color: AppColors.primaryYellow, fontSize: 18),
                            ),
                            Text(
                              "7321806252",
                              style: TextStyle(
                                  color: AppColors.secondaryYellow,
                                  fontSize: 14),
                            ),
                            Text(
                              "Patna",
                              style: TextStyle(
                                  color: AppColors.secondaryYellow,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.red.withOpacity(0.2),
                          ),
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            "53",
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            })
      ],
    ));
  }
}
