import 'package:bmi_calculation/constant/app_colors.dart';
import 'package:flutter/material.dart';
class AppTextStyle {
  AppTextStyle._();
  static const appbarTextStyle = TextStyle(
    fontSize: 20,
    color: AppColors.white,
    fontWeight: FontWeight.w600,
  );
  static const resultLabeTextStyle =  TextStyle(
    color: AppColors.resultLabelTextColor,
    fontSize: 35,
    fontWeight: FontWeight.w500,
  );
  static const resultTextStyle = TextStyle(
    color: AppColors.white,
    fontSize: 30,
    fontWeight: FontWeight.w500,
  );

  static const genderBoxStyle = TextStyle(
    fontSize: 20,
    color: Colors.white,
  );
  static const resultCommentTextStyle = TextStyle(
    fontSize: 16,
    color: AppColors.textColor,
  );

 
  static const buttonTextStyle = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w500,
    color: AppColors.textColor,
  );
}
