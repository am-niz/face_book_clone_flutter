import 'package:flutter/material.dart';

class MainDivider extends StatelessWidget {
  final double thickness;
  // final Color dividerColor;

  const MainDivider(
      {super.key, required this.thickness});

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: thickness,
      color: Colors.grey.shade300,
    );
  }
}
