import 'package:bmi_calculation/constant/app_colors.dart';
import 'package:bmi_calculation/constant/app_sizedbox.dart';
import 'package:bmi_calculation/constant/app_text.dart';
import 'package:bmi_calculation/core/enums/gender.dart';
import 'package:bmi_calculation/widgets/gender_box.dart';
import 'package:flutter/material.dart';

class AllGenderWidget extends StatefulWidget {
  const AllGenderWidget({super.key});

  @override
  State<AllGenderWidget> createState() => _AllGenderWidgetState();
}

class _AllGenderWidgetState extends State<AllGenderWidget> {
  Gender selectedGender = Gender.male;

  void _opTapMaleBox() {
    selectedGender = Gender.male;
    setState(() {});
  }

  void _opTapFemaleBox() {
    selectedGender = Gender.female;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _MaleBox(onTap: _opTapMaleBox, selectedGender: selectedGender),
       AppSizedbox.w16,
        _FameleBox(onTap: _opTapFemaleBox, selectedGender: selectedGender),
      ],
    );
  }
}

class _MaleBox extends StatelessWidget {
  const _MaleBox({required this.onTap, required this.selectedGender});
  final void Function() onTap;
  final Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: GenderBox(
          icon: Icons.male,
          text: AppText.male,
          backgroundColor: selectedGender == Gender.male
              ? AppColors.primary
              : AppColors.boxColor,
        ),
      ),
    );
  }
}

class _FameleBox extends StatelessWidget {
  const _FameleBox({
    required this.onTap,
    required this.selectedGender,
  });
  final void Function() onTap;
  final Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: GenderBox(
          icon: Icons.female,
          text: AppText.female,
          backgroundColor: selectedGender == Gender.female
              ? AppColors.primary
              : AppColors.boxColor,
        ),
      ),
    );
  }
}
