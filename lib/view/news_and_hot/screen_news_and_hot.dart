import 'package:flutter/material.dart';
import 'package:netflix/controller/news_and_hot/everyone_watching_api.dart';
import 'package:netflix/core/colors/kcolors.dart';
import 'package:netflix/core/sizes.dart';
import 'package:netflix/model/news_and_hot/coming_soon_model.dart';
import '../../controller/news_and_hot/coming_soon_api.dart';
import '../../model/news_and_hot/everyone_watching_model.dart';
import '../widgets/appbar_sidecast_buttons.dart';
import 'widgets/hot_and_new_list.dart';

class ScreenNewsAndHot extends StatefulWidget {
  const ScreenNewsAndHot({super.key});

  @override
  State<ScreenNewsAndHot> createState() => _ScreenNewsAndHotState();
}

class _ScreenNewsAndHotState extends State<ScreenNewsAndHot> {

  final ComingSoonApi comingSoonApi=ComingSoonApi();
  List<UpComingModel> upComingList=[];
  List<TrendingWatchingModel> trendingWatchingList=[];
  final EveryoneWatchingApi everyoneWatchingApi = EveryoneWatchingApi();

  @override
  void initState() {
    getUpComing();
    super.initState();
  }
  getUpComing()async{
    upComingList = await comingSoonApi.getUpComing();
    trendingWatchingList =await everyoneWatchingApi.getTrendingWatching();
    setState(() {});
  }

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
        body: TabBarView(children: [
          NewAndHotListWidget(toComingSoon: true,displayList: upComingList),
          NewAndHotListWidget(displayList: trendingWatchingList),
        ]),
      ),
    );
  }
}
