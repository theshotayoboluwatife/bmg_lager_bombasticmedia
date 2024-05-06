import 'package:flutter/material.dart';

class RoundedCornerImage extends StatelessWidget {
  final String imageUrl;
  final double imageSize;

  const RoundedCornerImage(
      {super.key, required this.imageUrl, required this.imageSize});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.asset(
          width: imageSize,
          height: imageSize,
          fit: BoxFit.cover,
          imageUrl,
        ),
      ),
    );
  }
}
