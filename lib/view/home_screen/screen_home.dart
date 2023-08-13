import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/controller/download/download_api.dart';
import 'package:netflix/controller/home/top_rated_api.dart';
import 'package:netflix/controller/news_and_hot/coming_soon_api.dart';
import 'package:netflix/controller/news_and_hot/everyone_watching_api.dart';
import 'package:netflix/core/images/imageurl.dart';
import 'package:netflix/core/sizes.dart';
import 'package:netflix/model/download/trending_model.dart';
import 'package:netflix/model/home/top_rated_model.dart';
import 'package:netflix/model/news_and_hot/coming_soon_model.dart';
import 'package:netflix/view/search/screen_search.dart';
import '../../model/news_and_hot/everyone_watching_model.dart';
import 'widgets/appbar_screen_home.dart';
import 'widgets/catogrised_list_maker.dart';
import 'widgets/main_screen_firsttile_widget.dart';

ValueNotifier<bool> scrollDirectionNotifier = ValueNotifier(true);
List emptyList = [
  TopRatedModel(backgroundPath: emptyImage),
  TopRatedModel(backgroundPath: emptyImage),
  TopRatedModel(backgroundPath: emptyImage)
];

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  final TopRatedApi topRatedApi = TopRatedApi();
  final EveryoneWatchingApi everyoneWatchingApi = EveryoneWatchingApi();
  final ComingSoonApi comingSoonApi = ComingSoonApi();
  final DownloadApi downloadApi = DownloadApi();

  List<TopRatedModel> topModelList = [];
  List<TrendingModel> trendinglList = [];
  List<UpComingModel> upComingList = [];
  List<TrendingWatchingModel> trendingWatchingList = [];

  @override
  void initState() {
    getTopRated();
    super.initState();
  }

  getTopRated() async {
    topModelList = await topRatedApi.getTopRated();
    trendingWatchingList = await everyoneWatchingApi.getTrendingWatching();
    upComingList = await comingSoonApi.getUpComing();
    trendinglList = await downloadApi.getTrendingModels();
    setState(() {});
    searchList=[...topModelList,...trendingWatchingList,...upComingList];
    searchList.removeWhere((model) => model.title==null);
  }

  @override
  Widget build(BuildContext context) {
    print('in search list ${searchList.length}');
    return ValueListenableBuilder(
      valueListenable: scrollDirectionNotifier,
      builder: (context, visible, _) =>
          NotificationListener<UserScrollNotification>(
        onNotification: (notification) {
          final ScrollDirection direction = notification.direction;
          //check the direction of the scroll and setting the appbar
          scrollDirectionNotifier.value =
              direction == ScrollDirection.forward ||
                  direction == ScrollDirection.idle;
          return true;
        },
        child: Stack(
          children: [
            ListView(
              children: [
                MainScreenFirstVideoTile(
                    image: trendinglList.isEmpty
                        ? emptyImage
                        : trendinglList[5].posterPath),
                kheigth10,
                //popular
                CatograisedListMaker(
                  modelList: trendingWatchingList.isEmpty
                      ? emptyList
                      : trendingWatchingList,
                  headline: 'Popular Movies',
                ),
                kheigth10,
                //Trending
                CatograisedListMaker(
                  modelList: upComingList.isEmpty ? emptyList : upComingList,
                  headline: 'Trending Movies',
                ),
                kheigth10,
                //top 10 tv shows
                CatograisedListMaker(
                    modelList: topModelList.isEmpty ? emptyList : topModelList,
                    headline: 'Top 10 Movies',
                    top10: true),
                kheigth10,

                // CatograisedListMaker(modelList: trendinglList,
                //   headline: 'Top Rated Movies',
                // ),
                // kheigth10,
                //Drama
                // CatograisedListMaker(
                //   headline: 'Drama',
                // ),
              ],
            ),
            visible ? const AppbarHomeScreen() : kheigth10
          ],
        ),
      ),
    );
  }
}
