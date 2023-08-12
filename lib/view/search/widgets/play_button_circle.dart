import 'package:flutter/material.dart';

import '../../../core/colors/kcolors.dart';

class PlayButtonCircle extends StatelessWidget {
  const PlayButtonCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: kWhite,
      radius: 27,
      child: CircleAvatar(
        backgroundColor: kBlack.withOpacity(0.9),
        radius: 25,
        child: const Icon(
          Icons.play_arrow,
          color: kWhite,
          size: 28,
        ),
      ),
    );
  }
}
