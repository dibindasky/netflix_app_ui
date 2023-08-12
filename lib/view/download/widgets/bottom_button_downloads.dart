import 'package:flutter/material.dart';
import '../../../core/colors/kcolors.dart';
import '../../../core/sizes.dart';

class ButtonContainerDownloads extends StatelessWidget {
  const ButtonContainerDownloads({
    super.key,
    required this.size,
    required this.padding,
    this.color = kWhite,
    required this.text,
    this.textColor = kWhite,
  });

  final Size size;
  final double padding;
  final Color color;
  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: padding),
      width: size.width,
      height: size.height * 0.05,
      decoration: BoxDecoration(color: color, borderRadius: kradius10),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
