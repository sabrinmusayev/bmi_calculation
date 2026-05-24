import 'package:bmi_calculation/bmi_calculator/constant/app_colors.dart';
import 'package:bmi_calculation/bmi_calculator/constant/app_text.dart';
import 'package:bmi_calculation/bmi_calculator/constant/app_text_style.dart';
import 'package:flutter/material.dart';


class CalculateButton extends StatelessWidget {
  const CalculateButton.calculate({
    super.key,
    this.textButton = AppText.calculate,
    required this.onTap,
  });
  const CalculateButton.reCalculate({
    super.key,
    this.textButton = AppText.reCalculate,
    required this.onTap,
  });
  final String textButton;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child:  SizedBox(
        height: 70,
        width: double.infinity,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Center(
            child: Text(textButton,
              style: AppTextStyle.buttonTextStyle
              ),
            ),
          ),
        ),
      );
    
  }
}
