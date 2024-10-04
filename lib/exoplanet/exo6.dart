import 'package:exofun/exoplanet/exo7.dart';
import 'package:exofun/super_earth/components/template11.dart';
import 'package:flutter/material.dart';

class Exo6 extends StatelessWidget {
  const Exo6({super.key});

  @override
  Widget build(BuildContext context) {
    return Template11(
      nextPage: Exo7(),
      text:
          'Mercury, being the smallest and closest planet to the Sun in our solar system, shares certain characteristics with rocky exoplanets, often referred to as "Terristrial"',
      buttonText: 'Terristrial',
      nasaUrl: 'https://science.nasa.gov/exoplanets/terrestrial/',
    );
  }
}
