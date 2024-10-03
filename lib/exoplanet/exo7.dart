import 'package:exofun/super_earth/components/template12.dart';
import 'package:flutter/material.dart';

class Exo7 extends StatelessWidget {
  const Exo7({super.key});

  @override
  Widget build(BuildContext context) {
    return Template12(
      customTitleText: 'Mercury-like Exoplanets',
      title: 'Kepler-1990 c',
      text:
          'Kepler-1990 c, a terrestrial exoplanet discovered in 2023, has 0.904 times Earth’s mass and 0.98 times its radius. It orbits a G-type star at 0.0504 AU in 4.1 days with a circular orbit.',
      image: 'assets/c2.png',
    );
  }
}
