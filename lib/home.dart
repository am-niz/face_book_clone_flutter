import 'package:facebook_clone/sections/status.dart';
import 'package:facebook_clone/widgets/app_bar_button.dart';
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
            AppBarButton(
                buttonIcon: Icons.search,
                buttonAction: () {
                  print("Go to search page");
                }),
            AppBarButton(
                buttonIcon: Icons.chat,
                buttonAction: () {
                  print("Go to Messengeer");
                }),
          ],
        ),
        body: ListView(
          children: <Widget>[
            StatusSection(),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
          ],
        ),
      ),
    );
  }
}
