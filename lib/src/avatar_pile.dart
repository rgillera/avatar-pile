import 'package:avatar_pile/avatar_pile.dart';
import 'package:flutter/material.dart';

class AvatarPile extends StatelessWidget {
  const AvatarPile({
    Key? key,
    required this.users,
    this.radius = 22.0,
    this.padding = 3.0,
  }) : super(key: key);

  final List<UserAvatar> users;
  final double radius;
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
                  radius: radius,
                  imageUrl: users[index].imageUrl.toString(),
                ),
              ),
              SizedBox(
                width: 80,
                child: Center(
                  child: Text(
                    users[index].username.toString(),
                    maxLines: 1,
                    style: const TextStyle(fontSize: 12.0, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      },
    );

    return Wrap(
      children: avatarWidget,
    );
  }
}
