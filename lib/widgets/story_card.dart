import 'package:facebook_clone/widgets/avatar.dart';
import 'package:facebook_clone/widgets/circular_button.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String storyDescription;
  final bool isOwnStory;
  final String story;
  final String profile;
  final bool displayBorder;

  const StoryCard({
    super.key,
    this.isOwnStory = false,
    required this.profile,
    required this.story,
    this.storyDescription = "Add to Story",
    this.displayBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(story),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
              left: 4,
              top: 4,
              child: isOwnStory
                  ? CircularButton(
                      buttonIcon: Icons.add,
                      buttonAction: () => print("Story add"),
                      color: Colors.blue,
                    )
                  : Avatar(
                      avatarPic: profile,
                      isStatus: false,
                      displayBorder: displayBorder,
                      height: 35,
                      width: 35 ,
                    )),
          Positioned(
            left: 7,
            bottom: 7,
            child: Text(
              storyDescription,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
