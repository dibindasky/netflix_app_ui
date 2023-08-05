import 'package:flutter/material.dart';
import '../../../core/sizes.dart';
import 'coming_soon_tile.dart';
import 'everyone_watch_tile.dart';

class NewAndHotListWidget extends StatelessWidget {
  const NewAndHotListWidget({
    super.key,
    this.toComingSoon = false,
  });

  final bool toComingSoon;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) =>
            toComingSoon ? const ComingSoonTile() : const EveryoneWatchTile(),
        separatorBuilder: (context, index) => kheigth10,
        itemCount: 10);
  }
}
