import 'package:flutter/material.dart';
import '../../../core/images/imageurl.dart';
import '../../widgets/volume_button.dart';

class ImageCardHotAndNew extends StatelessWidget {
  const ImageCardHotAndNew(
      {super.key, required this.size, this.fromComingSoon = false});

  final Size size;
  final bool fromComingSoon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: size.height * 0.27,
          width: fromComingSoon ? size.width * 0.90 : size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(hotAndNewComingSoonTemp),
                fit: BoxFit.cover),
          ),
        ),
        const Positioned(bottom: 10, right: 10, child: VolumeButton())
      ],
    );
  }
}
