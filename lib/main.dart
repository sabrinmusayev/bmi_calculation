import 'package:bmi_calculation/bmi_calculator/pages/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'BMI Calculator',
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
