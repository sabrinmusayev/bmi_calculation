import 'package:bmi_calculation/constant/app_colors.dart';
import 'package:bmi_calculation/constant/app_text.dart';
import 'package:bmi_calculation/widgets/app_box.dart';
import 'package:bmi_calculation/widgets/label_text.dart';
import 'package:bmi_calculation/widgets/number_text.dart';
import 'package:flutter/material.dart';

class HeightBox extends StatelessWidget {
  const HeightBox({super.key, required this.onSlide, required this.value});
  final void Function(double) onSlide;
  final double value;


  @override
  Widget build(BuildContext context) {
    return AppBox(
      child: Column(
        children: [
          const LabelText(labelText: AppText.height),
           NumberText(numberText: value.toInt().toString(), fontSize: 34),
          Slider(
            activeColor: AppColors.primary,
            min: 100,
            max: 200,
            value: value,
            onChanged: onSlide
          ),
        ],
      ),
    );
  }
}
