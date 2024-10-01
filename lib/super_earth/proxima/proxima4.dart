import 'package:exofun/super_earth/components/template2.dart';
import 'package:exofun/super_earth/components/text_box_2.dart';
import 'package:exofun/super_earth/proxima/proxima5.dart';
import 'package:flutter/material.dart';

class Proxima4 extends StatelessWidget {
  const Proxima4({super.key});

  @override
  Widget build(BuildContext context) {
    return Template2(
      bgImage: 'assets/image3.png',
      title: 'Proxima Centauri b',
      currentPage: 4,
      totalPages: 6,
      nextWidget: Proxima5(),
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
                      'Hello, Sun!” This is Proxima Centauri b. I live near a small, cool star far away from you. My world is very different. One side of me is always bright and hot, and the other side is cold and dark. What’s it like to be such a big, bright star with planets like Earth around you?',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextBox2(
                  text:
                      'Hello, Proxima Centauri b! It’s wonderful here! I have eight planets that orbit around me, each one with its own special story. Earth, my third planet, is very special because it has the perfect amount of light and heat for living things to grow. But I have to be careful — I can’t be too hot or too cold, or things might go wrong.',
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
