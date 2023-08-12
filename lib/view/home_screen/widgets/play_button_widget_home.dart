import 'package:flutter/material.dart';
import 'package:netflix/core/colors/kcolors.dart';

class PlayButtonHome extends StatelessWidget {
  const PlayButtonHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(kWhite),
          iconColor: MaterialStatePropertyAll(kBlack),
          shape: MaterialStatePropertyAll(
            BeveledRectangleBorder(),
          ),
        ),
        icon: const Icon(Icons.play_arrow),
        label: const Text(
          'Play',
          style: TextStyle(
              color: kBlack, fontSize: 18, fontWeight: FontWeight.w300),
        ),
        onPressed: () {});
  }
}
