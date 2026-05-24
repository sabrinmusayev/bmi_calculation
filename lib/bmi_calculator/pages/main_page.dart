import 'package:bmi_calculation/bmi_calculator/constant/app_colors.dart';
import 'package:bmi_calculation/bmi_calculator/constant/app_padding.dart';
import 'package:bmi_calculation/bmi_calculator/constant/app_sizedbox.dart';
import 'package:bmi_calculation/bmi_calculator/constant/app_text.dart';
import 'package:bmi_calculation/bmi_calculator/constant/app_text_style.dart';
import 'package:bmi_calculation/bmi_calculator/core/go.dart';
import 'package:bmi_calculation/bmi_calculator/pages/result_page.dart';
import 'package:bmi_calculation/bmi_calculator/widgets/box_circle_button.dart';
import 'package:bmi_calculation/bmi_calculator/widgets/calculate_button.dart';
import 'package:bmi_calculation/bmi_calculator/widgets/gender_box.dart';
import 'package:bmi_calculation/bmi_calculator/widgets/height_box.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Center(child: Text(AppText.appName)),
        titleTextStyle: AppTextStyle.appbarTextStyle,
        backgroundColor: AppColors.transparent,
      ),
      body: Padding(
        padding: AppPadding.h16,
        child: Column(
          children: [
            const Row(
              children: [
                Expanded(
                  child: GenderBox(icon: Icons.male, text: AppText.male),
                ),
                AppSizedbox.w16,
                Expanded(
                  child: GenderBox(icon: Icons.female, text: AppText.female),
                ),
              ],
            ),
            AppSizedbox.h16,
             const HeightBox(),
            AppSizedbox.h16,
             const Row(
              children: [
                Expanded(child: BoxCircleButton.weight(value: '60')),
                AppSizedbox.w16,
                Expanded(child: BoxCircleButton.age(value: '30')),
              ],
            ),
            Expanded(
              child: Center(
                child: CalculateButton.calculate(
                  onTap: () {
                    Go.to(context, const ResultPage());
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
