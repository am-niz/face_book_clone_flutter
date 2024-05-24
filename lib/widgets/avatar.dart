import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String avatarPic;
  final bool isStatus;
  const Avatar({
    super.key,
    required this.avatarPic,
    required this.isStatus,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            avatarPic,
            width: 50,
            height: 50,
          ),
        ),
        isStatus == true
            ? Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.greenAccent,
                    border: Border.all(
                      color: Colors.white,
                      width: 1.0,
                    ),
                  ),
                ),
              )
            : SizedBox(),
      ],
    );
  }
}