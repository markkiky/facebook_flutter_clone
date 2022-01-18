import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/models/models.dart';
import 'widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({Key? key, required this.currentUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 8.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvatar(imageUrl: currentUser.imageUrl),
              SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: "What\'s on your mind"),
                ),
              ),
            ],
          ),
          Divider(
            height: 10.0,
            thickness: 0.5,
          ),
          Container(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () => toast("Live"),
                  child: Row(
                    children: [
                      Icon(
                        Icons.videocam,
                        color: Colors.red,
                      ),
                      SizedBox(width: 2.0),
                      Text(
                        "Live",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                VerticalDivider(
                  width: 8.0,
                ),
                TextButton(
                  onPressed: () => toast("Video Cam"),
                  child: Row(
                    children: [
                      Icon(
                        Icons.photo_library,
                        color: Colors.green,
                      ),
                      SizedBox(width: 2.0),
                      Text(
                        "Photo",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                VerticalDivider(
                  width: 8.0,
                ),
                TextButton(
                  onPressed: () => toast("Room"),
                  child: Row(
                    children: [
                      Icon(
                        Icons.video_call,
                        color: Colors.purple,
                      ),
                      SizedBox(width: 2.0),
                      Text(
                        "Room",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  toast(message) {
    Fluttertoast.showToast(msg: message);
  }
}
