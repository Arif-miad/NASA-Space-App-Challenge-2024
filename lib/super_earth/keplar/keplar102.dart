import 'package:exofun/super_earth/components/template9.dart';
import 'package:exofun/super_earth/keplar/keplar8.dart';
import 'package:flutter/material.dart';

class Keplar102 extends StatelessWidget {
  const Keplar102({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Template9(
        bgImage: 'assets/keplar_bg.png',
        customTitleText: ' Kepler 452 b',
        text:
            'To detect Kepler 452b, astronomers observe the star\'s slight wobble as it orbits a common center of mass with the planet. Using spectroscopy, they detect shifts in the star’s light: blueshift when it moves toward us and redshift when it moves away, revealing Kepler 452b\'s presence.',
        gif: 'assets/method1.gif',
        nextPage: Keplar8(),
      ),
    );
  }
}
