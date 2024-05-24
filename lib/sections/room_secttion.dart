import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          SizedBox(width: 10),
          Avatar(avatarPic: dq, isStatus: true,),
          SizedBox(width: 10),
          Avatar(avatarPic: dq, isStatus: true,),
          SizedBox(width: 10),
          Avatar(avatarPic: dq, isStatus: true,),
          SizedBox(width: 10),
          Avatar(avatarPic: dq, isStatus: true,),
          SizedBox(width: 10),
          Avatar(avatarPic: dq, isStatus: true,),
          SizedBox(width: 10),
          Avatar(avatarPic: dq, isStatus: true,),
          SizedBox(width: 10),
          Avatar(avatarPic: dq, isStatus: true,),
          SizedBox(width: 10),
          Avatar(avatarPic: dq, isStatus: true,),
          SizedBox(width: 10),
          Avatar(avatarPic: dq, isStatus: true,),
          Avatar(avatarPic: dq, isStatus: true,),
          Avatar(avatarPic: dq, isStatus: true,),
          Avatar(avatarPic: dq, isStatus: true,),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return OutlinedButton.icon(
      onPressed: () {
        print("Room Created");
      },
      style: OutlinedButton.styleFrom(
        shape: StadiumBorder(),
        side: BorderSide(color: Colors.blue.shade100, width: 1.5),
      ),
      icon: Icon(
        Icons.video_call,
        color: Colors.purple,
      ),
      label: Text(
        "Create \nRoom",
        style: TextStyle(color: Colors.blue),
      ),
    );
  }
}
