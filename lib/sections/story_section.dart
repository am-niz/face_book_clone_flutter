import 'package:facebook_clone/widgets/story_card.dart';
import 'package:flutter/material.dart';
import 'package:facebook_clone/assets.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 5),
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(isOwnStory: true, story: dq, profile: dq, displayBorder: true,),
          StoryCard(story: dq, storyDescription: "hi how are you", profile: dq, displayBorder: true,),
          StoryCard(story: dq, storyDescription: "king of kotha", profile: dq, displayBorder: true,),
          StoryCard(story: dq,storyDescription: "ABCD",profile: dq,),
          StoryCard(story: dq, storyDescription: "ustad", profile: dq,displayBorder: true,),
        ],
      ),
    );
  }
}
