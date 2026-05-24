import 'package:flutter/material.dart';

class AppBox extends StatelessWidget {
  const AppBox({super.key, required this.child, this.backgroundColor});
  final Widget child;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: child,
      ),
    );
  }
}
