import 'package:flutter/material.dart';

import '../../../core/colors/kcolors.dart';
import '../../../core/images/imageurl.dart';
import '../../widgets/text_icon_widget.dart';
import 'play_button_widget_home.dart';

class MainScreenFirstVideoTile extends StatelessWidget {
  const MainScreenFirstVideoTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height * 0.70,
          decoration: const BoxDecoration(
              color: kgrey,
              image: DecorationImage(
                  image: NetworkImage(homeScreenMainImageTemp),
                  fit: BoxFit.cover)),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: size.height * 0.09,
            width: size.width,
            decoration: const BoxDecoration(color: Colors.black26),
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextIconWidget(
                  icon: Icons.add,
                  text: 'My List',
                ),
                PlayButtonHome(),
                TextIconWidget(
                  icon: Icons.info_outline,
                  text: 'info',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
