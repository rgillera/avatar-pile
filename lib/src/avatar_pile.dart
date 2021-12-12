import 'package:avatar_pile/avatar_pile.dart';
import 'package:flutter/material.dart';

class AvatarPile extends StatelessWidget {
  const AvatarPile({
    Key? key,
    required this.users,
    this.imageWidth = IMAGE_WIDTH,
    this.imageHeight = IMAGE_HEIGHT,
    this.padding = IMAGE_PADDING,
  }) : super(key: key);

  final List<UserAvatar> users;
  final double imageWidth;
  final double imageHeight;
  final double padding;

  @override
  Widget build(BuildContext context) {
    late List<Widget> avatarWidget = [];

    List.generate(
      users.length,
      (index) => {
        avatarWidget.add(
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(padding),
                child: AvatarCircle(
                  imageWidth: imageWidth,
                  imageHeight: imageHeight,
                  imageUrl: users[index].imageUrl.toString(),
                ),
              ),
              _displayName(users[index].name),
            ],
          ),
        ),
      },
    );

    return Wrap(
      children: avatarWidget,
    );
  }

  Widget _displayName(name) {
    if (name != '') {
      return SizedBox(
        width: 80,
        child: Center(
          child: Text(
            name.toString(),
            maxLines: 1,
            style: const TextStyle(fontSize: 12.0, color: Colors.white),
          ),
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
