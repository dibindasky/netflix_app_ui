import 'package:flutter/material.dart';
import 'package:netflix/core/sizes.dart';
import 'package:netflix/view/news_and_hot/widgets/image_card_hot_new.dart';
import 'package:netflix/view/widgets/text_icon_widget.dart';

import '../../../model/news_and_hot/everyone_watching_model.dart';

class EveryoneWatchTile extends StatelessWidget {
  const EveryoneWatchTile({super.key, required this.model});

  final TrendingWatchingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kheigth10,
          Text(
            model.title == null
                        ? ''
                        : model.title!.length > 23
                            ? '${model.title!.substring(0, 22)}..'
                            : model.title!,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          kheigth10,
          Text(model.overview??'',
            style: const TextStyle(fontSize: 11),
          ),
          kheigth10,
          ImageCardHotAndNew(size: size,image: model.backgroundPath),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextIconWidget(icon: Icons.share, text: 'share'),
              kwidth10,
              TextIconWidget(icon: Icons.add, text: 'My List'),
              kwidth10,
              TextIconWidget(icon: Icons.play_arrow, text: 'Play'),
              kwidth10
            ],
          )
        ],
      ),
    );
  }
}
