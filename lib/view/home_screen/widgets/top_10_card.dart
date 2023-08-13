import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import '../../../core/colors/kcolors.dart';
import '../../../core/images/imageurl.dart';
import '../../../core/sizes.dart';
import '../../../core/url/urls.dart';

class CardTop10 extends StatelessWidget {
  CardTop10({
    super.key,
    required this.index,
    required this.image,
  });

  final int index;
  final String? image;
  final Url url = Url();

  @override
  Widget build(BuildContext context) {
    String img = '';
    if (image != null) img = url.baseImageUrl + image!;
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 40),
          decoration: BoxDecoration(
            color: kgrey,
            borderRadius: kradius20,
            image: DecorationImage(
              image: NetworkImage(img == '' ? emptyImage : img),
              fit: BoxFit.cover,
            ),
          ),
          width: size.width * 0.38,
        ),
        Positioned(
          bottom: -20,
          left: index == 1 ? 15 : -5,
          child: BorderedText(
            strokeColor: kWhite,
            child: Text(
              index.toString(),
              style: const TextStyle(
                color: kBlack,
                fontSize: 130,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        )
      ],
    );
  }
}
