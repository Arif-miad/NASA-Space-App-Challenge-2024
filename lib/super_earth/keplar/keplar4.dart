import 'package:exofun/super_earth/components/template2.dart';
import 'package:exofun/super_earth/components/text_box_2.dart';
import 'package:exofun/super_earth/keplar/keplar5.dart';
import 'package:flutter/material.dart';

class Keplar4 extends StatelessWidget {
  const Keplar4({super.key});

  @override
  Widget build(BuildContext context) {
    return Template2(
      title: 'Kepler 452 b',
      currentPage: 4,
      totalPages: 8,
      nextWidget: Keplar5(),
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
                      'I am Kepler-452, a G-type star like your Sun, about 6 billion years old, compared to your Sun\'s 4.6 billion years. I\'ve been shining longer, which means my planets have experienced my warmth for a longer period..',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextBox2(
                  text:
                      'I see! We’re of the same stellar class, but my 10% smaller diameter keeps things more balanced in our solar system. You seem to be 20% brighter than me, so how does that affect your planets?',
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
