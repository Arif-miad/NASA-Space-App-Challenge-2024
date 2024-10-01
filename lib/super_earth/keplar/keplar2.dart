import 'package:exofun/super_earth/components/template2.dart';
import 'package:exofun/super_earth/components/text_box_1.dart';
import 'package:exofun/super_earth/keplar/keplar3.dart';
import 'package:flutter/material.dart';

class Keplar2 extends StatelessWidget {
  const Keplar2({super.key});

  @override
  Widget build(BuildContext context) {
    return Template2(
      title: 'Kepler 452 b',
      currentPage: 2,
      totalPages: 8,
      nextWidget: Keplar3(),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/keplar.png',
              scale: 1.5,
            ),
            TextBox1(
              text:
                  'Once upon a time, in the vast expanses of the cosmos, there was a planet named Kepler-452b,which is one of the most intriguing exoplanets discovered because of its position in the "habitable zone" of a star similar to our Sun. NASA\'s Kepler space telescope discovered this exoplanet in 2015',
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
