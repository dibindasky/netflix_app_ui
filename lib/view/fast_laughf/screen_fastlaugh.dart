import 'package:flutter/material.dart';
import 'widgets/fast_laughf_page_view.dart';

class ScreenFastLaughf extends StatelessWidget {
  const ScreenFastLaughf({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: List.generate(20, (index) => const PageFastLaughWidget()),
    ));
  }
}
