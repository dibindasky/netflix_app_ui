import 'package:flutter/material.dart';
import 'package:netflix/core/colors/kcolors.dart';

final ValueNotifier<int> selectedIndexNotoifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedIndexNotoifier,
      builder: (context, int currentIndex, _) => BottomNavigationBar(
          currentIndex: currentIndex,
          selectedItemColor: kWhite,
          unselectedItemColor: kgrey,
          showUnselectedLabels: true,
          unselectedLabelStyle: const TextStyle(color: kgrey),
          onTap: (value) => selectedIndexNotoifier.value = value,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.photo_library_outlined), label: 'News & Hot'),
            BottomNavigationBarItem(
                icon: Icon(Icons.tag_faces_outlined), label: 'Fast Laughf'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_sharp), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.download), label: 'Downloads'),
          ]),
    );
  }
}
