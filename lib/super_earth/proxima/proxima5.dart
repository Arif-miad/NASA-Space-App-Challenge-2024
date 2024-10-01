import 'package:exofun/super_earth/components/template2.dart';
import 'package:exofun/super_earth/components/text_box_2.dart';
import 'package:exofun/super_earth/proxima/proxima6.dart';
import 'package:flutter/material.dart';

class Proxima5 extends StatelessWidget {
  const Proxima5({super.key});

  @override
  Widget build(BuildContext context) {
    return Template2(
      title: 'Proxima Centauri b',
      currentPage: 5,
      totalPages: 6,
      nextWidget: Proxima6(),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/proxima.png',
                  scale: 1.7,
                ),
                TextBox2(
                  text:
                      'Wow, that sounds incredible! My world is so different from Earth. I wonder if I could ever have life like Earth does.',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextBox2(
                  text:
                      'Every planet is special in its own way, Proxima Centauri b. Even though your world is different, scientists on Earth are very excited to learn about you. Your star, Proxima Centauri, is the most common kind of star in our galaxy. By learning about you, we can discover more about other stars and planets just like yours.',
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
