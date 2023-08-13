import 'package:flutter/material.dart';
import 'package:netflix/core/url/urls.dart';
import '../../core/colors/kcolors.dart';
import '../../core/images/imageurl.dart';
import '../../core/sizes.dart';

class CardMain extends StatelessWidget {
  CardMain({
    super.key,required this.image
  });

 final String? image;
 final Url url=Url();

  @override
  Widget build(BuildContext context) {
    String img='';
    if(image!=null)img=url.baseImageUrl + image!;
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: kgrey,
        borderRadius: kradius10,
        image: DecorationImage(
            image: NetworkImage(image == null ? emptyImage : img), fit: BoxFit.cover),
      ),
      width: size.width * 0.361,
    );
  }
}
