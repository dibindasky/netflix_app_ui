import 'package:flutter/material.dart';
import '../../../core/images/imageurl.dart';
import 'image_card_downloads.dart';

class ImageCircleDownloads extends StatelessWidget {
  const ImageCircleDownloads({
    super.key,
    required this.size,
    this.images,
  });

  final Size size;
  final List<String>? images;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Center(
          child: Container(
            height: size.width * 0.60,
            width: size.width * 0.60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(360),
              color: Colors.white.withOpacity(0.4),
            ),
          ),
        ),
        Positioned(
          bottom: 30,
          left: 45,
          child: ImageCardDownloads(
            size: size,
            height: 0.40,
            width: 0.30,
            image: images == null ? emptyImage : images![0],
            // image: images![0],
            angle: 50,
          ),
        ),
        Positioned(
          bottom: 30,
          right: 45,
          child: ImageCardDownloads(
            size: size,
            height: 0.40,
            width: 0.30,
            image: images == null ? emptyImage : images![1],
            angle: -50,
          ),
        ),
        Positioned(
          bottom: 30,
          child: ImageCardDownloads(
            size: size,
            height: 0.47,
            width: 0.35,
            image: images == null ? emptyImage : images![2],
          ),
        ),
      ],
    );
  }
}
