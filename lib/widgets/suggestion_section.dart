import 'package:facebook_clone/widgets/sugestion_card.dart';
import 'package:flutter/material.dart';

import '../assets.dart';

class SuggestionSection extends StatelessWidget {
  const SuggestionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: [
          ListTile(
            title: Text(
              "People You May Know",
            ),
            trailing: IconButton(
              onPressed: () {
                print("suggestion option cliked");
              },
              icon: Icon(
                Icons.more_horiz,
              ),
            ),
          ),
          Container(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SugestionCard(
                  cardAvatar: dq,
                  cardPersonName: "Dulquer Salman",
                  mutualFriends: "5 Mutual Friends",
                ),
                SugestionCard(
                  cardAvatar: shiva,
                  cardPersonName: "Shivakumar",
                  mutualFriends: "1 Mutual Friends",
                ),
                SugestionCard(
                  cardAvatar: jazee,
                  cardPersonName: "Jazeera Mj",
                  mutualFriends: "10 Mutual Friends",
                ),
                SugestionCard(
                  cardAvatar: sahir,
                  cardPersonName: "Sahir MA",
                  mutualFriends: "50 Mutual Friends",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
