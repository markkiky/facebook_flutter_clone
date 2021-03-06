import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_responsive_ui/config/palette.dart';
import 'package:flutter_facebook_responsive_ui/data/data.dart';
import 'package:flutter_facebook_responsive_ui/helpers/methods.dart';
import 'package:flutter_facebook_responsive_ui/widgets/widgets.dart';
import 'package:mdi/mdi.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              centerTitle: false,
              floating: true,
              backgroundColor: Colors.white,
              title: Text(
                "facebook",
                style: const TextStyle(
                  color: Palette.facebookBlue,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1.2,
                ),
              ),
              actions: [
                CircleButton(
                  icon: Icons.search,
                  iconSize: 30.0,
                  onPressed: () => toast("Search"),
                ),
                CircleButton(
                  icon: Mdi.facebookMessenger,
                  iconSize: 30.0,
                  onPressed: () => toast("Messenger"),
                )
              ],
              systemOverlayStyle: SystemUiOverlayStyle.dark),
          SliverToBoxAdapter(
            child: CreatePostContainer(currentUser: currentUser),
          ),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
            sliver: SliverToBoxAdapter(
              child: Rooms(onlineUsers: onlineUsers),
            ),
          )
        ],
      ),
    );
  }
}
