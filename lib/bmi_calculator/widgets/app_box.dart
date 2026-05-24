import 'package:bmi_calculation/bmi_calculator/constant/app_colors.dart';
import 'package:flutter/material.dart';


class AppBox extends StatelessWidget {
  const AppBox({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: AppColors.boxColor,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: child,
      ),
    );
  }
}
