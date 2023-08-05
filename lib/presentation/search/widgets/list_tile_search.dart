import 'package:flutter/material.dart';
import '../../../core/images/imageurl.dart';
import '../../../core/sizes.dart';
import 'play_button_circle.dart';

class ListTileSearch extends StatelessWidget {
  const ListTileSearch({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
          children: [
            Container(
              width: size.width * 0.37,
              height: size.width * 0.20,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(searchTileTemp),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            kwidth10,
            const Text(
              'The Godfather',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const Spacer(),
            const PlayButtonCircle(),
            kwidth10,
          ],
        );
  }
}
