import 'package:exofun/super_earth/components/template2.dart';
import 'package:exofun/super_earth/components/text_box_2.dart';
import 'package:exofun/super_earth/keplar/keplar6.dart';
import 'package:flutter/material.dart';

class Keplar5 extends StatelessWidget {
  const Keplar5({super.key});

  @override
  Widget build(BuildContext context) {
    return Template2(
      title: 'Kepler 452 b',
      currentPage: 5,
      totalPages: 8,
      nextWidget: Keplar6(),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/keplar.png',
                  scale: 1.7,
                ),
                TextBox2(
                  text:
                      'My planets, like Kepler-452b, get more energy due to my brightness, which could lead to a stronger greenhouse effect, making it warmer than Earth. Kepler-452b is 5% farther from me and takes 385 days to orbit.',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextBox2(
                  text:
                      'Interesting! My planets are used to my steady brightness, but I’m younger than you. I wonder if the advanced age of your system gives more time for life to potentially develop on Kepler-452b.',
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
