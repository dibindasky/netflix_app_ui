import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import '../../../core/colors/kcolors.dart';
import '../../../core/images/imageurl.dart';
import '../../../core/sizes.dart';

class CardTop10 extends StatelessWidget {
  const CardTop10({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 40),
          decoration: BoxDecoration(
            color: kgrey,
            borderRadius: kradius20,
            image: const DecorationImage(
              image: NetworkImage(homeScreenTileImageTemp),
              fit: BoxFit.cover,
            ),
          ),
          width: size.width * 0.38,
        ),
        Positioned(
          bottom: -20,
          left: index == 1 ? 15 : -5,
          child: BorderedText(
            strokeColor: kWhite,
            child: Text(
              index.toString(),
              style: const TextStyle(
                color: kBlack,
                fontSize: 130,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        )
      ],
    );
  }
}
