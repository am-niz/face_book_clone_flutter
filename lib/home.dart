import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/sections/header_button_section.dart';
import 'package:facebook_clone/sections/post_card.dart';
import 'package:facebook_clone/sections/room_secttion.dart';
import 'package:facebook_clone/sections/create_status.dart';
import 'package:facebook_clone/sections/story_section.dart';
import 'package:facebook_clone/widgets/circular_button.dart';
import 'package:facebook_clone/widgets/divider.dart';
import 'package:facebook_clone/widgets/header_button.dart';
import 'package:facebook_clone/widgets/suggestion_section.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header3Buttons = HeaderButtonSection(
      button1: headerButton(
        buttonText: "Live",
        buttonIcon: Icons.video_call,
        buttonAction: () {
          print("Go Live!");
        },
        buttonColor: Colors.red,
      ),
      button2: headerButton(
        buttonText: "Photo",
        buttonIcon: Icons.photo_album,
        buttonAction: () {
          print("Take Photos");
        },
        buttonColor: Colors.green,
      ),
      button3: headerButton(
        buttonText: "Create Room",
        buttonIcon: Icons.video_call,
        buttonAction: () {
          print("Room");
        },
        buttonColor: Colors.purple,
      ),
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
                buttonIcon: Icons.search,
                buttonAction: () {
                  print("Go to search page");
                }),
            CircularButton(
                buttonIcon: Icons.chat,
                buttonAction: () {
                  print("Go to Messengeer");
                }),
          ],
        ),
        body: ListView(
          children: <Widget>[
            StatusSection(),
            MainDivider(thickness: 1),
            header3Buttons,
            MainDivider(thickness: 10),
            RoomSection(),
            MainDivider(thickness: 10),
            StorySection(),
            MainDivider(thickness: 10),
            PostCard(
              avatar: nizam,
              isStatus: false,
              avatarName: 'Nizam',
              postTime: '5h',
              posttitile: "Happy Onam",
              postImage: nizpost,
              showBlueTick: true,
              likes: "10k",
              comments: "1k",
              shares: "1k",
            ),
            PostCard(
              avatar: jazee,
              isStatus: false,
              avatarName: 'Jazeera',
              postTime: '6h',
              posttitile: "",
              postImage: jazeepost,
              showBlueTick: false,
              likes: "1k",
              comments: "1.5k",
              shares: "50k",
            ),
            SuggestionSection(),
            MainDivider(thickness: 10),
            PostCard(
              avatar: sahir,
              isStatus: false,
              avatarName: 'Sahir',
              postTime: '10h',
              posttitile: dileep,
              postImage: sahirpost,
              showBlueTick: false,
              likes: "109k",
              comments: "19k",
              shares: "13k",
            ),
          ],
        ),
      ),
    );
  }
}
