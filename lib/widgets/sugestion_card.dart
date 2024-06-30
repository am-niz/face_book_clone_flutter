import 'package:flutter/material.dart';

class SugestionCard extends StatelessWidget {
  final String cardAvatar;
  final String cardPersonName;
  final String mutualFriends;

  const SugestionCard({
    super.key,
    required this.cardAvatar,
    required this.cardPersonName,
    required this.mutualFriends,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      width: 300,
      margin: EdgeInsets.only(left: 7, right: 7),
      child: Stack(
        children: [
          suggestionCardPhoto(),
          suggestionCardInfo(),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: iconButton(
                    buttonAction: () => print("Request to friend"),
                    buttonIcon: Icons.account_box,
                    buttonIconColor: Colors.white,
                    buttonColor: Colors.blue.shade700,
                    buttonText: "Add Friend",
                  ),
                ),
                Container(
                  child: blankButton(
                    buttonAction: () => print("Remove it"),
                    buttonColor: Colors.grey.shade300,
                    buttonTextColor: Colors.black,
                    buttonText: "Remove",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget blankButton({
    required void Function() buttonAction,
    required Color buttonColor,
    required Color buttonTextColor,
    required String buttonText,
  }) {
    return TextButton(
      onPressed: buttonAction,
      style: TextButton.styleFrom(
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          color: buttonTextColor,
        ),
      ),
    );
  }

  Widget suggestionCardInfo() {
    return Positioned(
      bottom: 80,
      left: 0,
      right: 0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        height: 60,
        child: ListTile(
          title: Text(cardPersonName),
          subtitle: Text(mutualFriends),
        ),
      ),
    );
  }

  Widget suggestionCardPhoto() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        child: Image.asset(
          cardAvatar,
          height: 250,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget iconButton({
    required void Function() buttonAction,
    required IconData buttonIcon,
    required Color buttonColor,
    required Color buttonIconColor,
    required String buttonText,
  }) {
    return TextButton.icon(
      onPressed: buttonAction,
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        backgroundColor: buttonColor,
        foregroundColor:
            buttonIconColor, // Use foregroundColor instead of iconColor
      ),
      label: Text(
        buttonText,
        style: TextStyle(
          color: buttonIconColor, // Set text color here
        ),
      ),
      icon: Icon(
        buttonIcon,
        color: buttonIconColor, // Set icon color here
      ),
    );
  }
}
