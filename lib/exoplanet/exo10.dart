import 'package:exofun/exoplanet/exo11.dart';
import 'package:exofun/super_earth/components/template11.dart';
import 'package:flutter/material.dart';

class Exo10 extends StatelessWidget {
  const Exo10({super.key});

  @override
  Widget build(BuildContext context) {
    return Template11(
      nextPage: Exo11(),
      text:
          'Neptune-like exoplanets are gas giants similar in size and composition to Neptune, often rich in hydrogen, helium, and icy materials. These planets typically have thick atmospheres and can exist in a variety of environments.',
      buttonText: 'Neptune likes',
      nasaUrl: 'https://science.nasa.gov/exoplanets/neptune-like/',
    );
  }
}
