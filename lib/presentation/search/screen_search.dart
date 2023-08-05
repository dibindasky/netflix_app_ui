import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/sizes.dart';
import 'widgets/list_tile_search.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CupertinoSearchTextField(),
            kheigth10,
            const Text(
              'Top Searches',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            kheigth10,
            Expanded(
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => ListTileSearch(size: size),
                  separatorBuilder: (context, index) => kheigth10,
                  itemCount: 20),
            ),
          ],
        ),
      ),
    );
  }
}

