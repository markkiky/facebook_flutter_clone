import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_facebook_responsive_ui/config/palette.dart';
import 'package:flutter_facebook_responsive_ui/helpers/helpers.dart';
import 'package:flutter_facebook_responsive_ui/models/models.dart';
import 'package:flutter_facebook_responsive_ui/widgets/widgets.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUsers;

  const Rooms({Key? key, required this.onlineUsers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: Colors.white,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
        scrollDirection: Axis.horizontal,
        itemBuilder: (
          BuildContext context,
          int index,
        ) {
          if (index == 0) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: _CreateRoomButton(),
            );
          }
          return Container(
            margin: EdgeInsets.only(right: 10.0),
            child: ProfileAvatar(
              imageUrl: onlineUsers[index - 1].imageUrl,
              isActive: true,
            ),
          );
        },
        itemCount: 1 + onlineUsers.length,
      ),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  const _CreateRoomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: () => toast("Create Room"),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      color: Colors.white,
      borderSide: BorderSide(
        color: Colors.lightBlueAccent,
        width: 3.0,
      ),
      textColor: Palette.facebookBlue,
      child: Row(
        children: [
          ShaderMask(
            shaderCallback: (rect) =>
                Palette.createRoomGradient.createShader(rect),
            child: Icon(
              Icons.video_call,
              size: 35.0,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 4.0,
          ),
          Text("Create\nRoom")
        ],
      ),
    );
  }
}
