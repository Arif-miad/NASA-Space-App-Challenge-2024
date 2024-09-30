import 'package:exofun/super_earth/components/template2.dart';
import 'package:exofun/super_earth/components/text_box_2.dart';
import 'package:exofun/super_earth/proxima/proxima902.dart';
import 'package:flutter/material.dart';

class Proxima901 extends StatelessWidget {
  const Proxima901({super.key});

  @override
  Widget build(BuildContext context) {
    return Template2(
      nextWidget: Proxima902(),
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
                  text:
                      'Do you know which telescope detected Proxima Centauri b?',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextBox2(
                  text:
                      'It’s HARPS. Short for High Accuracy Radial Velocity Planet Searcher. Pretty cool name, right? Do you want to learn more? If you’re ready to dive deeper into space secrets, just click next !',
                ),
                Image.asset(
                  'assets/proxima.png',
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
