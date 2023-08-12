import 'package:flutter/material.dart';

import '../../../core/colors/kcolors.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Icon(
        Icons.settings,
        color: kWhite,
      ),
      Text(
        'smart downloads',
        style: TextStyle(color: kWhite),
      ),
    ]);
  }
}
