import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/sections/header_button_section.dart';
import 'package:facebook_clone/widgets/avatar.dart';
import 'package:facebook_clone/widgets/blue_icon.dart';
import 'package:facebook_clone/widgets/divider.dart';
import 'package:facebook_clone/widgets/header_button.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final bool isStatus;
  final String avatarName;
  final String postTime;
  final String posttitile;
  final String postImage;
  final bool showBlueTick;
  final String likes;
  final String comments;
  final String shares;

  const PostCard({
    super.key,
    required this.avatar,
    required this.isStatus,
    required this.avatarName,
    required this.postTime,
    required this.posttitile,
    required this.postImage,
    this.showBlueTick = false,
    required this.likes,
    required this.comments,
    required this.shares,
  });

  @override
  Widget build(BuildContext context) {
    // assign the bottom like, comment share button to a widget postBottom
    Widget postBottom = HeaderButtonSection(
      button1: headerButton(
        buttonText: "Like",
        buttonIcon: Icons.thumb_up_outlined,
        buttonAction: () {
          print("Post Liked");
        },
        buttonColor: Colors.grey.shade700,
      ),
      button2: headerButton(
        buttonText: "Comment",
        buttonIcon: Icons.message_outlined,
        buttonAction: () {
          print("Open comment");
        },
        buttonColor: Colors.grey.shade700,
      ),
      button3: headerButton(
        buttonText: "Share",
        buttonIcon: Icons.share_outlined,
        buttonAction: () {
          print("Share Option");
        },
        buttonColor: Colors.grey.shade700,
      ),
    );
    return Container(
      child: Column(
        children: [
          postCardHead(),
          titleSection(),
          imageSection(),
          footerSection(),
          MainDivider(thickness: 2),
          postBottom,
          MainDivider(thickness: 10),
        ],
      ),
    );
  }

  Widget footerSection() {
    return Container(
      padding: EdgeInsets.only(
        top: 5,
        // bottom: 5,
      ),
      child: Row(
        children: [
          Container(
            // color: Colors.black,
            padding: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                BlueIcon(icon: Icons.thumb_down),
                SizedBox(
                  width: 5,
                ),
                postTexts(likes),
              ],
            ),
          ),
          Container(
            // color: Colors.black,
            padding: EdgeInsets.only(
              left: 67,
            ),
            child: Row(
              children: [
                postTexts(comments),
                SizedBox(width: 5),
                postTexts("Comments"),
                SizedBox(
                  width: 10,
                ),
                postTexts(shares),
                SizedBox(
                  width: 5,
                ),
                postTexts("Shares"),
                SizedBox(
                  width: 8,
                ),
                Avatar(
                  avatarPic: dq,
                  isStatus: false,
                  height: 25,
                  width: 25,
                ),
                IconButton(
                  onPressed: () {
                    print("Drop down button at storyfooter pressed");
                  },
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey[700],
                    size: 25,
                  ),
                  // color: Colors.grey[700],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget postTexts(text) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.grey[1000],
      ),
    );
  }

  Widget postCardHead() {
    return ListTile(
      leading: Avatar(
        avatarPic: avatar,
        isStatus: false,
        height: 50,
        width: 50,
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
          showBlueTick
              ? BlueIcon(
                  icon: Icons.check,
                )
              : SizedBox(),
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
    return posttitile != ""
        ? Container(
            padding: EdgeInsets.only(bottom: 5, left: 10, right: 10, top: 10),
            child: Text(
              posttitile,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          )
        : SizedBox(height: 5);
  }

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset(postImage),
    );
  }
}
