import 'package:exofun/super_earth/components/template2.dart';
import 'package:exofun/super_earth/components/text_box_2.dart';
import 'package:exofun/super_earth/proxima/proxima802.dart';
import 'package:flutter/material.dart';

class Proxima801 extends StatelessWidget {
  const Proxima801({super.key});

  @override
  Widget build(BuildContext context) {
    return Template2(
      bgImage: 'assets/image3.png',
      title: 'Proxima Centauri b',
      currentPage: 1,
      totalPages: 2,
      nextWidget: Proxima802(),
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
                      'Do you know which method used to detect Proxima Centauri b?',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextBox2(
                  text:
                      'It’s Redial velocity method. Do you want to learn more? If you’re ready to dive deeper into space secrets, just click next !',
                ),
                Image.asset(
                  'assets/proxima.png',
                  scale: 1.7,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
