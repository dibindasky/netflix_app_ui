import 'package:flutter/material.dart';
import 'package:netflix/core/sizes.dart';
import 'package:netflix/presentation/news_and_hot/widgets/image_card_hot_new.dart';
import 'package:netflix/presentation/widgets/text_icon_widget.dart';

class EveryoneWatchTile extends StatelessWidget {
  const EveryoneWatchTile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kheigth10,
          const Text(
            'Barbie',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          kheigth10,
          const Text(
            'Try correcting the name to the name of an existing getter, or defining a getter or field named.Try correcting the name to the name of an existing getter, or defining a getter or field named.Try correcting the name to the name of an existing getter, or defining a getter or field named.Try correcting the name to the name of an existing getter, or defining a getter or field named',
            style: TextStyle(fontSize: 11),
          ),
          kheigth10,
          ImageCardHotAndNew(size: size),
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
