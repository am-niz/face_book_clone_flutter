import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  final Widget button1;
  final Widget button2;
  final Widget button3;
  const HeaderButtonSection({
    super.key,
    required this.button1,
    required this.button2,
    required this.button3,
  });

  @override
  Widget build(BuildContext context) {
    Widget verticleDivider = VerticalDivider(
      thickness: 1,
      color: Colors.grey[300],
    );
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          button1,
          verticleDivider,
          button2,
          verticleDivider,
          button3,
        ],
      ),
    );
  }
}
