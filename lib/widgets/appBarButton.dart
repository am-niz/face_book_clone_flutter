import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;

  const AppBarButton({super.key, 
    required this.buttonIcon,
    required this.buttonAction,
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
                  color: Colors.black,
                  size: 25,
                ),
                onPressed: buttonAction,
              ),
            );
  }
}