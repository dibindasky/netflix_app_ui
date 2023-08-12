import 'package:flutter/material.dart';
import '../../../core/sizes.dart';
import 'coming_soon_tile.dart';
import 'everyone_watch_tile.dart';

class NewAndHotListWidget extends StatelessWidget {
  const NewAndHotListWidget({
    super.key,
    this.toComingSoon = false, required this.displayList,
  });

  final bool toComingSoon;
  final List<dynamic> displayList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) =>
            toComingSoon ? ComingSoonTile(model: displayList[index],) : EveryoneWatchTile(model: displayList[index],),
        separatorBuilder: (context, index) => kheigth10,
        itemCount: displayList.length);
  }
}
