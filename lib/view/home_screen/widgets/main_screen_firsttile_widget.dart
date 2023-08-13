import 'package:flutter/material.dart';
import 'package:netflix/core/url/urls.dart';

import '../../../core/colors/kcolors.dart';
import '../../../core/images/imageurl.dart';
import '../../widgets/text_icon_widget.dart';
import 'play_button_widget_home.dart';

class MainScreenFirstVideoTile extends StatelessWidget {
  MainScreenFirstVideoTile({
    super.key, required this.image,
  });

  final Url url=Url();
  final String? image;

  @override
  Widget build(BuildContext context) {
    String img='';
    if(image != emptyImage)img=url.baseImageUrl+image!;
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height * 0.70,
          decoration: BoxDecoration(
              color: kgrey,
              image: DecorationImage(
                  image: NetworkImage(img=='' ? emptyImage : img),
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
