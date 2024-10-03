import 'package:exofun/exoplanet/exo2.dart';
import 'package:exofun/super_earth/components/template10.dart';
import 'package:exofun/super_earth/components/template9.dart';
import 'package:exofun/super_earth/proxima/proxima6.dart';
import 'package:flutter/material.dart';

class Exo1 extends StatelessWidget {
  const Exo1({super.key});

  @override
  Widget build(BuildContext context) {
    return Template10(
      currentPage: 1,
      totalPages: 3,
      nextPage: Exo2(),
      bgImage: 'assets/image3.png',
      customTitleText: 'Exoplanet',
      textMain:
          '"Hey! Know what an exoplanet is? Exoplanets orbit stars outside our solar system. Some are big, some small, and they can be super hot or cold. Ready to explore? Click \'Next\' and let\'s go!"',
      gif: 'assets/exo.gif',
    );
  }
}
