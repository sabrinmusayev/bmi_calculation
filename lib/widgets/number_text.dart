import 'package:bmi_calculation/constant/app_colors.dart';
import 'package:flutter/material.dart';


class NumberText extends StatelessWidget {
  const NumberText({super.key, required this.numberText, this.fontSize = 40});
  final String numberText;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      numberText,
      style: TextStyle(fontSize: fontSize, color: AppColors.textColor),
    );
  }
}
