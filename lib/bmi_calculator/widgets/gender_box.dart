import 'package:bmi_calculation/bmi_calculator/constant/app_colors.dart';
import 'package:bmi_calculation/bmi_calculator/constant/app_text_style.dart';
import 'package:bmi_calculation/bmi_calculator/widgets/app_box.dart';
import 'package:flutter/material.dart';


class GenderBox extends StatelessWidget {
  const GenderBox({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return AppBox(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              Icon(icon,color: AppColors.textColor, size: 121),
              Text(text, style: AppTextStyle.genderBoxStyle )
            ],),
        ),
      ),
    );
  }
}
