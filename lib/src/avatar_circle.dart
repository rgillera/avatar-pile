import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AvatarCircle extends StatelessWidget {
  const AvatarCircle({
    Key? key,
    required this.imageUrl,
    required this.imageWidth,
    required this.imageHeight,
  }) : super(key: key);

  final String imageUrl;
  final double imageWidth;
  final double imageHeight;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: CachedNetworkImage(
        fit: BoxFit.cover,
        imageUrl: imageUrl,
        width: imageWidth,
        height: imageHeight,
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
