import 'package:flutter/material.dart';
import '../../../core/images/imageurl.dart';
import '../../../core/sizes.dart';
import '../../../model/download/trending_model.dart';
import 'play_button_circle.dart';

class ListTileSearch extends StatelessWidget {
  const ListTileSearch({
    super.key,
    required this.size,
    required this.model,
  });

  final Size size;
  final TrendingModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: size.width * 0.37,
          height: size.width * 0.20,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(model.backgroundPath != null
                  ? 'https://image.tmdb.org/t/p/w500${model.backgroundPath!}'
                  : emptyImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        kwidth10,
        Text(
          model.title == null
              ? 'Movie'
              : model.title!.length <= 17
                  ? model.title!
                  : '${model.title!.substring(0, 17)}...',
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const Spacer(),
        const PlayButtonCircle(),
        kwidth10,
      ],
    );
  }
}
