import 'package:flutter/material.dart';
import 'package:netflix/model/news_and_hot/coming_soon_model.dart';

import '../../../core/sizes.dart';
import '../../widgets/text_icon_widget.dart';
import 'image_card_hot_new.dart';

class ComingSoonTile extends StatelessWidget {
  const ComingSoonTile({
    super.key,
    required this.model,
  });

  final UpComingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: size.width * 0.10,
          child: const Column(children: [
            Text(
              'Jul',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '19',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ]),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            kheigth20,
            ImageCardHotAndNew(
                size: size, fromComingSoon: true, image: model.backgroundPath),
            SizedBox(
              width: size.width * 0.90,
              height: size.height * 0.05,
              child: Row(
                children: [
                  Text(
                    model.title == null
                        ? ''
                        : model.title!.length > 23
                            ? '${model.title!.substring(0, 22)}..'
                            : model.title!,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  const TextIconWidget(
                      icon: Icons.alarm_on_sharp, text: 'Remind Me'),
                  kwidth10,
                  const TextIconWidget(
                      icon: Icons.info_outline_rounded, text: 'info'),
                  kwidth10
                ],
              ),
            ),
            kheigth20,
            SizedBox(
              width: size.width * 0.90,
              child: Text(
                model.overview ?? '',
                style: const TextStyle(fontSize: 11),
              ),
            ),
            kheigth20
          ],
        ),
      ],
    );
  }
}
