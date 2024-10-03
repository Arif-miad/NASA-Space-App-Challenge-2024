import 'package:exofun/exoplanet/exo3.dart';
import 'package:exofun/super_earth/components/template2.dart';
import 'package:exofun/super_earth/components/text_box_1.dart';
import 'package:flutter/material.dart';

class Exo2 extends StatelessWidget {
  const Exo2({super.key});

  @override
  Widget build(BuildContext context) {
    return Template2(
      bgImage: 'assets/image3.png',
      title: 'Exoplanet',
      currentPage: 2,
      totalPages: 3,
      nextWidget: Exo3(),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/earth.png',
              scale: 1,
            ),
            TextBox1(
              text:
                  'There are different types of exoplanets! Want to know more? Click \'Next\' and let\'s explore together!',
            ),
            Image.asset(
              'assets/robot3.png',
              scale: 1.5,
            ),
          ],
        ),
      ),
    );
  }
}
