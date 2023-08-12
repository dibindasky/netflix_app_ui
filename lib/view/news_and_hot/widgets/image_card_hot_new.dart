import 'package:flutter/material.dart';
import 'package:netflix/core/url/urls.dart';
import '../../../core/images/imageurl.dart';
import '../../widgets/volume_button.dart';

class ImageCardHotAndNew extends StatelessWidget {
  ImageCardHotAndNew(
      {super.key,
      required this.size,
      this.fromComingSoon = false,
      required this.image});

  final Size size;
  final bool fromComingSoon;
  final String? image;
  final Url url = Url();

  @override
  Widget build(BuildContext context) {
    String img = '';
    if (image != null) img = url.baseImageUrl + image!;
    return Stack(
      children: [
        Container(
          height: size.height * 0.27,
          width: fromComingSoon ? size.width * 0.90 : size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(image == null ? emptyImage : img),
                fit: BoxFit.cover),
          ),
        ),
        const Positioned(bottom: 10, right: 10, child: VolumeButton())
      ],
    );
  }
}
