import 'package:exofun/super_earth/components/template12.dart';
import 'package:flutter/material.dart';

class Exo9 extends StatelessWidget {
  const Exo9({super.key});

  @override
  Widget build(BuildContext context) {
    return Template12(
      customTitleText: 'Jupiter-like Exoplanets',
      title: '51 Pegasi b',
      text:
          'Exoplanets like 51 Pegasi b, a gas giant, orbit very close to their stars, leading to extreme heat and faster winds than my Great Red Spot. These hot Jupiters face intense temperatures and violent storms due to their proximity.',
      image: 'assets/c3.png',
    );
  }
}
