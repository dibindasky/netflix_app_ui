import 'package:flutter/material.dart';
import 'package:netflix/core/colors/kcolors.dart';
import 'package:netflix/core/sizes.dart';
import 'package:netflix/presentation/widgets/appbar_sidecast_buttons.dart';
import 'widgets/bottom_button_downloads.dart';
import 'widgets/image_circle_downloads.dart';
import 'widgets/setting_button_downloads.dart';

class ScreenDownloads extends StatelessWidget {
  const ScreenDownloads({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Downloads',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        actions: const [AppbarSidecastButtons()],
      ),
      body: SizedBox(
        width: size.width,
        child: Column(
          children: [
            const SettingsButton(),
            const Text(
              'Introducing Downloads For You',
              style: TextStyle(fontSize: 23),
            ),
            const Text(
              'We will Download a Personalised Collection \nof Movies And Shows For You, There\'s \nAlwase Something To Watch On Your \nDevice',
              style: TextStyle(
                  fontWeight: FontWeight.w100, fontSize: 15, color: kgrey),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            ImageCircleDownloads(size: size),
            const Spacer(),
            ButtonContainerDownloads(
              size: size,
              color: Colors.blueAccent,
              padding: 10,
              text: 'Set Up',
            ),
            kheigth10,
            ButtonContainerDownloads(
              size: size,
              padding: 40,
              text: 'See What You Can Download',
              textColor: kBlack,
            ),
            kheigth10
          ],
        ),
      ),
    );
  }
}
