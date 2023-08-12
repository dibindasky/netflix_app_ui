import 'package:flutter/material.dart';

import '../../../core/sizes.dart';
import '../../widgets/text_icon_widget.dart';
import 'image_card_hot_new.dart';

class ComingSoonTile extends StatelessWidget {
  const ComingSoonTile({
    super.key,
  });

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
            ImageCardHotAndNew(size: size, fromComingSoon: true),
            SizedBox(
              width: size.width * 0.90,
              height: size.height * 0.05,
              child: const Row(
                children: [
                  Text(
                    'Barbie',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  TextIconWidget(icon: Icons.alarm_on_sharp, text: 'Remind Me'),
                  kwidth10,
                  TextIconWidget(
                      icon: Icons.info_outline_rounded, text: 'info'),
                  kwidth10
                ],
              ),
            ),
            kheigth20,
            SizedBox(
              width: size.width * 0.90,
              child: const Text(
                'Try correcting the name to the name of an existing getter, or defining a getter or field named.Try correcting the name to the name of an existing getter, or defining a getter or field named.Try correcting the name to the name of an existing getter, or defining a getter or field named.Try correcting the name to the name of an existing getter, or defining a getter or field named',
                style: TextStyle(fontSize: 11),
              ),
            ),
            kheigth20
          ],
        ),
      ],
    );
  }
}
