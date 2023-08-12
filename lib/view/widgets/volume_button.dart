import 'package:flutter/material.dart';

import '../../core/colors/kcolors.dart';

class VolumeButton extends StatelessWidget {
  const VolumeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: Colors.black45,
      child: Icon(
        Icons.volume_off_outlined,
        color: kWhite,
      ),
    );
  }
}
