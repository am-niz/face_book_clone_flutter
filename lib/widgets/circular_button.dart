import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;
  final color;

  const CircularButton({
    super.key,
    required this.buttonIcon,
    required this.buttonAction,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[300],
      ),
      child: IconButton(
        icon: Icon(
          buttonIcon,
          color: color,
          size: 25,
        ),
        onPressed: buttonAction,
      ),
    );
  }
}
