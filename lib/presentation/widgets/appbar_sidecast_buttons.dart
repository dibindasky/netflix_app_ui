import 'package:flutter/material.dart';
import '../../core/sizes.dart';

class AppbarSidecastButtons extends StatelessWidget {
  const AppbarSidecastButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        kwidth10,
        const Icon(Icons.cast),
        kwidth10,
        Container(
          color: const Color.fromARGB(255, 11, 91, 228),
          height: size.height * 0.03,
          width: size.height * 0.03,
        ),
        kwidth10
      ],
    );
  }
}
