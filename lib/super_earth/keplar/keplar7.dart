import 'package:exofun/super_earth/components/template2.dart';
import 'package:exofun/super_earth/components/text_box_2.dart';
import 'package:exofun/super_earth/keplar/keplar8.dart';
import 'package:flutter/material.dart';

class Keplar7 extends StatelessWidget {
  const Keplar7({super.key});

  @override
  Widget build(BuildContext context) {
    return Template2(
      title: 'Kepler 452 b',
      currentPage: 7,
      totalPages: 8,
      nextWidget: Keplar8(),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/keplar2.png',
                  scale: 1.1,
                ),
                TextBox2(
                  text:
                      'Exactly. There’s still much to learn. Its position in my habitable zone raises the possibility of liquid water, but further study, especially with future telescopes, will reveal more.',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextBox2(
                  text: 'Yes.',
                ),
                Image.asset(
                  'assets/sun.png',
                  scale: 0.7,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
