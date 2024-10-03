import 'package:exofun/super_earth/components/template12.dart';
import 'package:flutter/material.dart';

class Exo11 extends StatelessWidget {
  const Exo11({super.key});

  @override
  Widget build(BuildContext context) {
    return Template12(
      customTitleText: 'Neptune-like Exoplanets',
      title: 'GJ 436 b',
      text:
          'GJ 436 b is a Neptune-like exoplanet called a Hot Neptune. Despite its close orbit to its star, it has an icy atmosphere due to unique conditions that prevent the ice from melting. These planets help scientists study planetary formation and atmospheres in extreme environments.',
      image: 'assets/c4.png',
    );
  }
}
