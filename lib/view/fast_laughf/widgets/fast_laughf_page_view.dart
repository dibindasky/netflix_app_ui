import 'package:flutter/material.dart';
import '../../../core/images/imageurl.dart';
import '../../../core/sizes.dart';
import '../../widgets/text_icon_widget.dart';
import '../../widgets/volume_button.dart';

class PageFastLaughWidget extends StatelessWidget {
  const PageFastLaughWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(fastLaughPageTemp),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 30,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            width: size.width,
            height: size.height,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                VolumeButton(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(fastLaughPageTemp),
                    ),
                    kheigth20,
                    TextIconWidget(icon: Icons.tag_faces_rounded, text: 'LOL'),
                    kheigth20,
                    TextIconWidget(icon: Icons.add, text: 'My List'),
                    kheigth20,
                    TextIconWidget(icon: Icons.share, text: 'Share'),
                    kheigth20,
                    TextIconWidget(icon: Icons.play_arrow, text: 'Play'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
