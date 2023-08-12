import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/sizes.dart';
import 'widgets/appbar_screen_home.dart';
import 'widgets/catogrised_list_maker.dart';
import 'widgets/main_screen_firsttile_widget.dart';

ValueNotifier<bool> scrollDirectionNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: scrollDirectionNotifier,
      builder: (context, visible, _) =>
          NotificationListener<UserScrollNotification>(
        onNotification: (notification) {
          final ScrollDirection direction = notification.direction;
          //check the direction of the scroll and setting the appbar
          scrollDirectionNotifier.value = direction == ScrollDirection.forward ;
              // || direction == ScrollDirection.idle;
          return true;
        },
        child: Stack(
          children: [
            ListView(
              children: const [
                MainScreenFirstVideoTile(),
                kheigth10,
                CatograisedListMaker(
                  headline: 'Popular Movies',
                ),
                kheigth10,
                CatograisedListMaker(
                  headline: 'Trending Movies',
                ),
                kheigth10,
                CatograisedListMaker(
                    headline: 'Top 10 TV Shows in India Today', top10: true),
                kheigth10,
                CatograisedListMaker(
                  headline: 'South Indian Movies',
                ),
                kheigth10,
                CatograisedListMaker(
                  headline: 'Drama',
                ),
              ],
            ),
            visible ? const AppbarHomeScreen() : kheigth10
          ],
        ),
      ),
    );
  }
}
