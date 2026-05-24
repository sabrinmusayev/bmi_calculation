import 'package:bmi_calculation/constant/app_text.dart';
import 'package:bmi_calculation/widgets/app_box.dart';
import 'package:bmi_calculation/widgets/circle_button.dart';
import 'package:bmi_calculation/widgets/label_text.dart';
import 'package:bmi_calculation/widgets/number_text.dart';
import 'package:flutter/material.dart';

class BoxCircleButton extends StatelessWidget {
  const BoxCircleButton.weight({
    super.key,
    this.label = AppText.weight,
    required this.value,
    required this.onMinus,
    required this.onPlus,
  });
  const BoxCircleButton.age({
    super.key,
    this.label = AppText.age,
    required this.value,
    required this.onMinus,
    required this.onPlus,
  });
  final String label;
  final int value;
  final void Function() onPlus;
  final void Function() onMinus;

  @override
  Widget build(BuildContext context) {
    return AppBox(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            LabelText(labelText: label),
            NumberText(numberText: value.toString(), fontSize: 34),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleButoon(icon: Icons.add, onTap: onPlus),
                const SizedBox(width: 12),
                CircleButoon(icon: Icons.remove, onTap: onMinus),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
