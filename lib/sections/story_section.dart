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
          StoryCard(isOwnStory: true, story: nizam, profile: nizpost, displayBorder: true,),
          StoryCard(story: sahirpost, storyDescription: "hi how are you", profile: sahir, displayBorder: true,),
          StoryCard(story: jazeepost, storyDescription: "king of kotha", profile: jazee, displayBorder: true,),
          StoryCard(story: shiva ,storyDescription: "ABCD",profile: shiva,),
          StoryCard(story: dq, storyDescription: "ustad", profile: dq,displayBorder: true,),
        ],
      ),
    );
  }
}
