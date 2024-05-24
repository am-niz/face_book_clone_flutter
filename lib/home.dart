import 'package:facebook_clone/sections/header_button_section.dart';
import 'package:facebook_clone/sections/room_secttion.dart';
import 'package:facebook_clone/sections/status.dart';
import 'package:facebook_clone/sections/story_section.dart';
import 'package:facebook_clone/widgets/circular_button.dart';
import 'package:facebook_clone/widgets/divider.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
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
            HeaderButtonSection(),
            MainDivider(thickness: 10),
            RoomSection(),
            MainDivider(thickness: 10),
            StorySection(),
            MainDivider(thickness: 10)
          ],
        ),
      ),
    );
  }
}
