import 'package:flutter/material.dart';
import '../../core/colors/kcolors.dart';
import '../../core/images/imageurl.dart';
import '../../core/sizes.dart';

class CardMain extends StatelessWidget {
  const CardMain({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: kgrey,
        borderRadius: kradius10,
        image: const DecorationImage(
            image: NetworkImage(homeScreenTileImageTemp),
            fit: BoxFit.cover),
      ),
      width: size.width * 0.361,
    );
  }
}
