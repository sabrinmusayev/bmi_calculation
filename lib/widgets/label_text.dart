import 'package:bmi_calculation/constant/app_colors.dart';
import 'package:flutter/material.dart';


class LabelText extends StatelessWidget {
  const LabelText({super.key, required this.labelText});
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Text(labelText,style: const TextStyle(fontSize: 20,color: AppColors.textColor),);
  }
}