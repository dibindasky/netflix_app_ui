import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/controller/search/top_search_api.dart';
import 'package:netflix/core/sizes.dart';
import 'package:netflix/model/download/trending_model.dart';
import 'package:netflix/view/widgets/main_card.dart';
import 'widgets/list_tile_search.dart';

ValueNotifier<bool> search = ValueNotifier(false);

class ScreenSearch extends StatefulWidget {
  const ScreenSearch({super.key});

  @override
  State<ScreenSearch> createState() => _ScreenSearchState();
}

class _ScreenSearchState extends State<ScreenSearch> {

  List<TrendingModel> topSearch=[];
  final TopSearchApi topSearchApi = TopSearchApi();

  @override
  void initState() {
    getTopSearches();
    super.initState();
  }

  getTopSearches()async{
    final list= await topSearchApi.getTopSearches();
      // setState(() {for(var v in list){if(v.posterPath!=null)topSearch.add(v);}});
      setState(() {topSearch=list;});
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              onChanged: (value) {
                if (value.isNotEmpty) {
                  search.value = true;
                } else {
                  search.value = false;
                }
              },
            ),
            kheigth10,
            const Text(
              'Top Searches',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            kheigth10,
            Expanded(
                child: ValueListenableBuilder(
              valueListenable: search,
              builder: (context, value, _) {
                if (value) {
                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1 / 1.7,
                      mainAxisSpacing: 8,
                      crossAxisCount: 3,
                    ),
                    itemCount: 21,
                    itemBuilder: (context, index) => CardMain(),
                  );
                } else {
                  return ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) => ListTileSearch(size: size,model: topSearch[index]),
                    separatorBuilder: (context, index) => kheigth10,
                    itemCount: topSearch.length,
                  );
                }
              },
            )),
          ],
        ),
      ),
    );
  }
}
