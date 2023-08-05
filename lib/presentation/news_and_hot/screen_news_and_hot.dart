import 'package:flutter/material.dart';
import 'package:netflix/core/colors/kcolors.dart';
import 'package:netflix/core/sizes.dart';
import '../widgets/appbar_sidecast_buttons.dart';
import 'widgets/hot_and_new_list.dart';

class ScreenNewsAndHot extends StatelessWidget {
  const ScreenNewsAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'New & Hot',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          actions: const [AppbarSidecastButtons()],
          bottom: TabBar(
              isScrollable: true,
              indicator: BoxDecoration(color: kWhite, borderRadius: kradius30),
              labelStyle:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              labelColor: kBlack,
              indicatorPadding: const EdgeInsets.symmetric(horizontal: -20),
              tabs: const [
                Tab(
                  text: '🍿Coming Soon',
                ),
                Tab(
                  text: '👀Everyone is watching',
                ),
              ]),
        ),
        body: const TabBarView(children: [
          NewAndHotListWidget(toComingSoon: true),
          NewAndHotListWidget(),
        ]),
      ),
    );
  }
}

