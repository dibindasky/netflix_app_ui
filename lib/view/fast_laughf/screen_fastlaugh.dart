import 'package:flutter/material.dart';
import 'package:netflix/core/images/video_urls.dart';
import 'widgets/fast_laughf_page_view.dart';

class ScreenFastLaughf extends StatelessWidget {
  const ScreenFastLaughf({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: List.generate(
          20,
          (index) => PageFastLaughWidget(index: index,
            videoUrl: videoUrls[index % videoUrls.length],
          ),
        ),
      ),
    );
  }
}
