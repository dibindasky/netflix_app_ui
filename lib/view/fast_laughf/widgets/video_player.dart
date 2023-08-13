import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../core/sizes.dart';

class ViedoPlayerFastLaugh extends StatefulWidget {
  const ViedoPlayerFastLaugh({super.key, required this.url});

  final String url;

  @override
  State<ViedoPlayerFastLaugh> createState() => _ViedoPlayerFastLaughState();
}

class _ViedoPlayerFastLaughState extends State<ViedoPlayerFastLaugh> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.url))
      ..initialize().then((_) {
        setState(() {
          _controller.play();
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: () {
        _controller.value.isPlaying ? _controller.pause() : _controller.play();
        setState(() {});
      },
      child: Stack(
        children: [
          Center(
              child: _controller.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    )
                  : kheigth10),
          _controller.value.isPlaying && _controller.value.isInitialized
              ? const SizedBox()
              : !_controller.value.isInitialized
                  ? const Center(
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                      ),
                    )
                  : const Center(
                      child: Icon(
                      Icons.play_circle_sharp,
                      size: 50,
                    ))
        ],
      ),
    ));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
