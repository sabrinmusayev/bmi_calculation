import 'package:bmi_calculation/bmi_calculator/constant/app_colors.dart';
import 'package:flutter/material.dart';


class CircleButoon extends StatelessWidget {
  const CircleButoon({super.key, required this.icon, this.onTap});

  final IconData icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 44,
        width: 44,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.circleButtonColor,
          ),
          child: Icon(icon, size: 20, color: AppColors.textColor),
        ),
      ),
    );
  }
}
