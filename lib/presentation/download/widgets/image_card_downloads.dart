import 'package:flutter/material.dart';
import '../../../core/colors/kcolors.dart';

class ImageCardDownloads extends StatelessWidget {
  const ImageCardDownloads({
    super.key,
    required this.size,
    required this.height,
    required this.width, 
    required this.image,
    this.angle=0,
  });

  final Size size;
  final double height;
  final double width;
  final String image;
  final double angle;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle,
      child: Container(
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
              image: NetworkImage(image), fit: BoxFit.cover),
        ),
        height: size.width * height,
        width: size.width * width,
      ),
    );
  }
}
