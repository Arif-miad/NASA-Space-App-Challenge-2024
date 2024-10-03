import 'package:exofun/super_earth/components/template9.dart';
import 'package:exofun/super_earth/proxima/proxima6.dart';
import 'package:flutter/material.dart';

class Proxima802 extends StatelessWidget {
  const Proxima802({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Template9(
        nextPage: Proxima6(),
        bgImage: 'assets/image3.png',
        customTitleText: 'Proxima Centauri b',
        text:
            'To detect Proxima Centauri b, astronomers observe the star\'s slight wobble as it orbits a common center of mass with the planet. Using spectroscopy, they detect shifts in the star’s light: blueshift when it moves toward us and redshift when it moves away, revealing Proxima b\'s presence.',
        gif: 'assets/method1.gif',
      ),
    );
  }
}
