import 'package:flutter/material.dart';
import '../../../core/sizes.dart';
import '../../widgets/main_card.dart';
import 'top_10_card.dart';

class CatograisedListMaker extends StatelessWidget {
  const CatograisedListMaker({
    super.key,
    required this.headline,
    this.top10 = false,
  });

  final String headline;
  final bool top10;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ' $headline',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        kheigth10,
        SizedBox(
          height: size.height * 0.26,
          child: ListView.builder(
            itemCount: top10 ? 10 : 20,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>
                top10 ? CardTop10(index: index + 1) : const CardMain(),
          ),
        )
      ],
    );
  }
}
