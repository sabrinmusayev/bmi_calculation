import 'package:bmi_calculation/constant/app_colors.dart';
import 'package:bmi_calculation/constant/app_padding.dart';
import 'package:bmi_calculation/constant/app_sizedbox.dart';
import 'package:bmi_calculation/constant/app_text.dart';
import 'package:bmi_calculation/constant/app_text_style.dart';
import 'package:bmi_calculation/core/go.dart';
import 'package:bmi_calculation/pages/result_page.dart';
import 'package:bmi_calculation/widgets/all_gender_widget.dart';
import 'package:bmi_calculation/widgets/box_circle_button.dart';
import 'package:bmi_calculation/widgets/calculate_button.dart';
import 'package:bmi_calculation/widgets/height_box.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double height = 177;
  int weight = 70;
  int age = 25;

  void _onWeightPlus() {
    weight++;
    setState(() {});
  }

  void _onWeightMinus() {
    weight--;
    setState(() {});
  }

  void _onAgePlus() {
    age++;
    setState(() {});
  }

  void _onAgeMinus() {
    age--;
    setState(() {});
  }

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
            const AllGenderWidget(),
            AppSizedbox.h16,
            HeightBox(
              value: height,
              onSlide: (v) {
                height = v;
                setState(() {});
              },
            ),
            AppSizedbox.h16,
            Row(
              children: [
                Expanded(
                  child: BoxCircleButton.weight(
                    value: weight,
                    onMinus: _onWeightMinus,
                    onPlus: _onWeightPlus,
                  ),
                ),
                AppSizedbox.w16,
                Expanded(
                  child: BoxCircleButton.age(
                    value: age,
                    onMinus: _onAgeMinus,
                    onPlus: _onAgePlus,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Center(
                child: CalculateButton.calculate(
                  onTap: () {
                    height=height/100;
                    double result=weight/(height*height).round();
                    Go.to(context, ResultPage(result: result,));
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
