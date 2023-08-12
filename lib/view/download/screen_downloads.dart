import 'package:flutter/material.dart';
import 'package:netflix/controller/download/download_api.dart';
import 'package:netflix/core/colors/kcolors.dart';
import 'package:netflix/core/sizes.dart';
import 'package:netflix/view/widgets/appbar_sidecast_buttons.dart';
import 'widgets/bottom_button_downloads.dart';
import 'widgets/image_circle_downloads.dart';
import 'widgets/setting_button_downloads.dart';

class ScreenDownloads extends StatefulWidget {
  const ScreenDownloads({super.key});

  @override
  State<ScreenDownloads> createState() => _ScreenDownloadsState();
}

class _ScreenDownloadsState extends State<ScreenDownloads> {
  final DownloadApi downloadApi = DownloadApi();

  List<String>? images;
  @override
  void initState() {
    super.initState();
    getDownloadImages();
  }

  getDownloadImages() async {
    images = await downloadApi.getDownloadImages();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) async{
    //   images=await downloadApi.getDownloadImages();
    // });
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
            ImageCircleDownloads(size: size,images: images,),
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
