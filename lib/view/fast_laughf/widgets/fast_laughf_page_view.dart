import 'package:flutter/material.dart';
import 'package:netflix/view/search/screen_search.dart';
import '../../../core/images/imageurl.dart';
import '../../../core/sizes.dart';
import '../../../core/url/urls.dart';
import '../../widgets/text_icon_widget.dart';
import '../../widgets/volume_button.dart';
import 'video_player.dart';

class PageFastLaughWidget extends StatelessWidget {
  PageFastLaughWidget({
    super.key,
    required this.videoUrl, required this.index,
  });

  final String videoUrl;
  final int index;
  final Url url=Url();

  @override
  Widget build(BuildContext context) {
    String? image = searchList[index].backgroundPath;
    String img='';
    if(image!=null)img=url.baseImageUrl + image;
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          height: size.height,
          width: size.width,
          child: ViedoPlayerFastLaugh(url: videoUrl),
        ),
        Positioned(
          bottom: 30,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            width: size.width,
            height: size.height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const VolumeButton(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(img == '' ? emptyImage : img),
                    ),
                    kheigth20,
                    const TextIconWidget(icon: Icons.tag_faces_rounded, text: 'LOL'),
                    kheigth20,
                    const TextIconWidget(icon: Icons.add, text: 'My List'),
                    kheigth20,
                    const TextIconWidget(icon: Icons.share, text: 'Share'),
                    kheigth20,
                    const TextIconWidget(icon: Icons.play_arrow, text: 'Play'),
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
