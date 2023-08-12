import 'package:flutter/material.dart';
import '../../../core/images/imageurl.dart';
import '../../../core/sizes.dart';
import '../../widgets/appbar_sidecast_buttons.dart';

class AppbarHomeScreen extends StatelessWidget {
  const AppbarHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 1000),
      color: Colors.black54,
      height: size.height * 0.10,
      width: size.width,
      child: Column(
        children: [
          kheigth10,
          Row(
            children: [
              kwidth10,
              Container(
                height: size.height * 0.05,
                width: size.height * 0.05,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(netflixLogo), fit: BoxFit.cover),
                ),
              ),
              const Spacer(),
              const AppbarSidecastButtons(),
            ],
          ),
          kheigth10,
          const Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Tv Shows',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Movies',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Catogories',
                style: TextStyle(fontSize: 16),
              )
            ],
          )
        ],
      ),
    );
  }
}
