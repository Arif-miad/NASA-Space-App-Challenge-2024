import 'package:exofun/exoplanet/exo9.dart';
import 'package:exofun/super_earth/components/template11.dart';
import 'package:flutter/material.dart';

class Exo8 extends StatelessWidget {
  const Exo8({super.key});

  @override
  Widget build(BuildContext context) {
    return Template11(
      nextPage: Exo9(),
      text:
          'Jupiter are gas giant exoplanets share a lot of similarities. These planets are massive and made mostly of hydrogen and helium amd also have thick atmospheres with intense storms.',
      buttonText: 'Gas Giants',
      nasaUrl: 'https://science.nasa.gov/exoplanets/gas-giant/',
    );
  }
}
