import 'package:facebook_clone/widgets/avatar.dart';
import 'package:facebook_clone/widgets/blue_tick.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final bool isStatus;
  final String avatarName;
  final String postTime;

  const PostCard({
    super.key,
    required this.avatar,
    required this.isStatus,
    required this.avatarName,
    required this.postTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHead(),
          titleSection(),
        ],
      ),
    );
  }

  Widget postCardHead() {
    return ListTile(
      leading: Avatar(
        avatarPic: avatar,
        isStatus: false,
      ),
      title: Row(
        children: [
          Text(
            avatarName,
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          SizedBox(
            width: 10,
          ),
          const BlueTick(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(
            postTime,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          )
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          print("postcard option cliked");
        },
        icon: Icon(Icons.more_horiz, color: Colors.grey.shade700),
      ),
    );
  }

  Widget titleSection() {
    return Container(
      child: Text(
        "Happy diwaly",
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    );
  }
}
