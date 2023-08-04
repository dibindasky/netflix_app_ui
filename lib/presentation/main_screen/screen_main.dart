import 'package:flutter/material.dart';
import 'package:netflix/presentation/main_screen/widgets/bottom_navigation_widget.dart';
import 'package:netflix/presentation/download/screen_downloads.dart';
import 'package:netflix/presentation/fast_laughf/screen_fastlaugh.dart';
import 'package:netflix/presentation/home_screen/screen_home.dart';
import 'package:netflix/presentation/news_and_hot/screen_news_and_hot.dart';
import 'package:netflix/presentation/search/screen_search.dart';

class ScreenMain extends StatelessWidget {
  ScreenMain({super.key});

  final _bottomList = [
    const ScreenHome(),
    const ScreenNewsAndHot(),
    const ScreenFastLaughf(),
    const ScreenSearch(),
    const ScreenDownloads()
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
