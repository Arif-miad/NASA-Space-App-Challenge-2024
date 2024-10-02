import 'package:exofun/super_earth/components/template6.dart';
import 'package:flutter/material.dart';

class Intro25 extends StatelessWidget {
  const Intro25({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Template6(
        customTitleText: 'Example',
        text:
            'This method was used to detect OGLE-2016-BLG-1195Lb, a Super-Earth located in the Milky Way’s galactic disk.',
        image: 'assets/image10.png',
      ),
    );
  }
}
