import 'package:flutter/material.dart';
import 'package:netflix/view/main_screen/widgets/bottom_navigation_widget.dart';
import 'package:netflix/view/download/screen_downloads.dart';
import 'package:netflix/view/fast_laughf/screen_fastlaugh.dart';
import 'package:netflix/view/home_screen/screen_home.dart';
import 'package:netflix/view/news_and_hot/screen_news_and_hot.dart';
import 'package:netflix/view/search/screen_search.dart';

class ScreenMain extends StatelessWidget {
  ScreenMain({super.key});

  final _bottomList = [
    const ScreenHome(),
    const ScreenNewsAndHot(),
    const ScreenFastLaughf(),
    const ScreenSearch(),
    ScreenDownloads()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: ValueListenableBuilder(
            valueListenable: selectedIndexNotoifier,
            builder: (context, index, child) => _bottomList[index],
          ),
        ),
        bottomNavigationBar: const BottomNavigationWidget());
  }
}
