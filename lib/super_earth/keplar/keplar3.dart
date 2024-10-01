import 'package:exofun/super_earth/components/template2.dart';
import 'package:exofun/super_earth/components/text_box_1.dart';
import 'package:exofun/super_earth/keplar/keplar4.dart';
import 'package:flutter/material.dart';

class Keplar3 extends StatelessWidget {
  const Keplar3({super.key});

  @override
  Widget build(BuildContext context) {
    return Template2(
      title: 'Kepler 452 b',
      currentPage: 3,
      totalPages: 8,
      nextWidget: Keplar4(),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextBox1(
              extraWidth: 100,
              text:
                  'It is also called "Earth\'s cousin due to its similarities in size and orbital distance from its host star. This exoplanet orbits the star Kepler-452, which is about 1,400 light-years away from Earth in the constellation Cygnus.',
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
