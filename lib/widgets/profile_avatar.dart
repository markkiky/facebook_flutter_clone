import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final bool isActive;

  const ProfileAvatar({Key? key, required this.imageUrl, this.isActive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 20.0,
          backgroundColor: Colors.grey[200],
          backgroundImage: CachedNetworkImageProvider(imageUrl),
        ),
        isActive
            ? Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                ),
              )
            : SizedBox.shrink()
      ],
    );
  }
}
