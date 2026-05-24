import 'package:bmi_calculation/bmi_calculator/constant/app_colors.dart';
import 'package:bmi_calculation/bmi_calculator/constant/app_text.dart';
import 'package:bmi_calculation/bmi_calculator/widgets/app_box.dart';
import 'package:bmi_calculation/bmi_calculator/widgets/label_text.dart';
import 'package:bmi_calculation/bmi_calculator/widgets/number_text.dart';
import 'package:flutter/material.dart';

class HeightBox extends StatelessWidget {
  const HeightBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBox(
      child: Column(
        children: [
          const LabelText(labelText: AppText.height),
          const NumberText(numberText: '177 cm', fontSize: 34),
          Slider(
            activeColor: AppColors.primary,
            min: 100,
            max: 200,
            value: 177,
            onChanged: (v) {},
          ),
        ],
      ),
    );
  }
}
