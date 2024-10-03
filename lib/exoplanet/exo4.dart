import 'package:exofun/exoplanet/exo5.dart';
import 'package:exofun/super_earth/components/template11.dart';
import 'package:flutter/material.dart';

class Exo4 extends StatelessWidget {
  const Exo4({super.key});

  @override
  Widget build(BuildContext context) {
    return Template11(
      nextPage: Exo5(),
      text:
          'Exoplanets that resemble Earth are often referred to as "Earth-like" or "potentially habitable terrestrial planets." These planets orbit in their star\'s habitable zone, where conditions might allow liquid water to exist.',
      buttonText: 'Super Earths',
    );
  }
}
