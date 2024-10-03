import 'package:exofun/super_earth/components/template2.dart';
import 'package:exofun/super_earth/components/text_box_2.dart';
import 'package:exofun/super_earth/keplar/keplar102.dart';
import 'package:flutter/material.dart';

class Keplar101 extends StatelessWidget {
  const Keplar101({super.key});

  @override
  Widget build(BuildContext context) {
    return Template2(
      bgImage: 'assets/keplar_bg.png',
      title: ' Kepler 452 b',
      currentPage: 1,
      totalPages: 2,
      nextWidget: Keplar102(),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/robot3.png',
                  scale: 1.7,
                ),
                TextBox2(
                  text: 'Do you know which method used to detect Kepler 452b?',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextBox2(
                  text:
                      'It’s a Transit method. Do you want to learn more? If you’re ready to dive deeper into space secrets, just click next !',
                ),
                Image.asset(
                  'assets/keplar.png',
                  scale: 1.9,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
