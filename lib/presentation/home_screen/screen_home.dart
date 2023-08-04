import 'package:flutter/material.dart';
import 'package:netflix/core/colors/kcolors.dart';
import 'package:netflix/core/images/imageurl.dart';
import 'package:netflix/presentation/widgets/text_icon_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Stack(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.70,
              decoration: const BoxDecoration(
                  color: kgrey,
                  image: DecorationImage(
                      image: NetworkImage(homeScreenMainImageTemp),
                      fit: BoxFit.cover)),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: size.height * 0.09,
                width: size.width,
                decoration: const BoxDecoration(color: kgrey),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const TextIconWidget(
                      icon: Icons.add,
                      text: 'My List',
                    ),
                    ElevatedButton.icon(
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(kWhite),
                          iconColor: MaterialStatePropertyAll(kBlack),
                          textStyle: MaterialStatePropertyAll(TextStyle(color: kBlack)),
                          shape: MaterialStatePropertyAll(
                            BeveledRectangleBorder(),
                          ),
                        ),
                        icon: const Icon(Icons.play_arrow),
                        label: const Text('data'),
                        onPressed: () {}),
                    const TextIconWidget(
                      icon: Icons.add,
                      text: 'My List',
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
