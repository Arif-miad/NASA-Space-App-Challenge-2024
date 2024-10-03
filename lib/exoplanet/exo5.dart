import 'package:exofun/super_earth/components/template12.dart';
import 'package:flutter/material.dart';

class Exo5 extends StatelessWidget {
  const Exo5({super.key});

  @override
  Widget build(BuildContext context) {
    return Template12(
      customTitleText: 'Earth-like Exoplanets',
      title: 'Kepler-10b',
      text:
          'Kepler-10b is a super-Earth discovered in 2011. It’s 3.26 times Earth’s mass and 1.47 times its radius. Orbiting a G-type star, it completes its orbit in just 0.8 days at a distance of 0.01685 AU, with a circular orbit.',
      image: 'assets/c1.png',
    );
  }
}
