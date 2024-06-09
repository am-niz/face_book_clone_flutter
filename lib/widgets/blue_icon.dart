import 'package:flutter/material.dart';

class BlueIcon extends StatelessWidget {
  final IconData icon;
  const BlueIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      width: 15,
      decoration: const BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: Colors.white,
        size: 10,
      ),
    );
  }
}
