import 'package:exofun/exoplanet/exo10.dart';
import 'package:exofun/exoplanet/exo12.dart';
import 'package:exofun/exoplanet/exo4.dart';
import 'package:exofun/exoplanet/exo6.dart';
import 'package:exofun/exoplanet/exo8.dart';
import 'package:exofun/levels_page.dart';
import 'package:exofun/super_earth/components/button2.dart';
import 'package:exofun/super_earth/components/button4.dart';
import 'package:exofun/super_earth/components/template2.dart';
import 'package:flutter/material.dart';

class Exo3 extends StatelessWidget {
  const Exo3({super.key});

  @override
  Widget build(BuildContext context) {
    return Template2(
      nextWidget: Exo12(),
      currentPage: 3,
      totalPages: 3,
      title: 'Exoplanet',
      bgImage: 'assets/image3.png',
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Button4(
                  text: 'Mercury Like Terrestrials',
                  image: 'assets/mercury.png',
                  onClick: Exo6(),
                ),
                Button4(
                  text: 'Naptune Likes',
                  image: 'assets/neptune_icon.png',
                  onClick: Exo10(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Button4(
                  text: 'Jupiter Like Gas Giants',
                  image: 'assets/jupiter.png',
                  onClick: Exo8(),
                ),
                Button4(
                  text: 'Earth Like Super Earths',
                  image: 'assets/earth.png',
                  onClick: Exo4(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
