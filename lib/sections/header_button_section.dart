import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HeaderButtonSection extends StatelessWidget {
  const HeaderButtonSection({super.key});

  Widget headerButton({
    required String buttonText,
    required IconData buttonIcon,
    required void Function() buttonAction,
    required Color buttonColor,
  }) {
    return TextButton.icon(
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttonColor,
      ),
      label: Text(buttonText),
    );
  }

  Widget headDivider({required double thickness, required Color dividerColor}) {
    return VerticalDivider(
      thickness: 1,
      color: Colors.grey[300],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerButton(
              buttonAction: () {
                print("Livebuttonclicked..");
              },
              buttonText: "Live",
              buttonIcon: Icons.video_call,
              buttonColor: Colors.red),
          headDivider(
            thickness: 1,
            dividerColor: Colors.grey,
          ),
          headerButton(
            buttonAction: () {
              print("Photobuttonclicked..");
            },
            buttonText: "photo",
            buttonIcon: Icons.photo_library,
            buttonColor: Colors.green,
          ),
          headDivider(thickness: 1, dividerColor: Colors.grey),
          headerButton(
            buttonAction: () {
              print("Roombuttonclicked..");
            },
            buttonText: "Room",
            buttonIcon: Icons.video_call,
            buttonColor: Colors.purple,
          ),
        ],
      ),
    );
  }
}
