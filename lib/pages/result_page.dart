import 'package:bmi_calculation/constant/app_colors.dart';
import 'package:bmi_calculation/constant/app_padding.dart';
import 'package:bmi_calculation/constant/app_text.dart';
import 'package:bmi_calculation/constant/app_text_style.dart';
import 'package:bmi_calculation/widgets/app_box.dart';
import 'package:bmi_calculation/widgets/calculate_button.dart';
import 'package:bmi_calculation/widgets/number_text.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key,required this.result});
  final double result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Center(child: Text(AppText.appName)),
        titleTextStyle: AppTextStyle.appbarTextStyle,
        backgroundColor: AppColors.transparent,
        foregroundColor: AppColors.white,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(AppText.resultText, style: AppTextStyle.resultTextStyle),
             SizedBox(
              height: 500,
              width: 350,
              child: AppBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      AppText.resultLabelText,
                      style: AppTextStyle.resultLabeTextStyle,
                    ),
                    NumberText(numberText: result.toStringAsFixed(1), fontSize: 70),
                    const Padding(
                      padding: AppPadding.a16,
                      child: Center(
                        child: Text(
                          AppText.resultCommentText,
                          textAlign: TextAlign.center,
                          style: AppTextStyle.resultCommentTextStyle,
                        ),
                      ),
                    ),
              
                  ],
                ),
              ),
            ),
            Expanded(child: Center(child: Padding(
              padding: AppPadding.a16,
              child: CalculateButton.reCalculate(onTap: (){},),
            )))
          ],
        ),
      ),
    );
  }
}
