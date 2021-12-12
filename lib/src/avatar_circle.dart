import 'package:flutter/material.dart';

class AvatarCircle extends StatelessWidget {
  const AvatarCircle({
    Key? key,
    required this.imageUrl,
    required this.radius,
  }) : super(key: key);

  final String imageUrl;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: NetworkImage(
        imageUrl,
      ),
      backgroundColor: Colors.transparent,
    );
  }
}
