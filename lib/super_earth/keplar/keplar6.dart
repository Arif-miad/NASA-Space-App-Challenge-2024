import 'package:exofun/super_earth/components/template2.dart';
import 'package:exofun/super_earth/components/text_box_2.dart';
import 'package:exofun/super_earth/keplar/keplar7.dart';
import 'package:flutter/material.dart';

class Keplar6 extends StatelessWidget {
  const Keplar6({super.key});

  @override
  Widget build(BuildContext context) {
    return Template2(
      title: 'Kepler 452 b',
      currentPage: 6,
      totalPages: 8,
      nextWidget: Keplar7(),
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
                      'That excites scientists on Earth! With 1.5 billion more years of evolution, Kepler-452b could reveal how life might evolve. Being 60% larger than Earth, its gravity would also be stronger.',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextBox2(
                  text:
                      'So your planet is like an older, bigger sibling to Earth! But without knowing more about its atmosphere, scientists can only guess whether it’s rocky or if it has water.',
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
