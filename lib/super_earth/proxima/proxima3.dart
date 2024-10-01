import 'package:exofun/super_earth/components/template2.dart';
import 'package:exofun/super_earth/components/text_box_1.dart';
import 'package:exofun/super_earth/proxima/proxima4.dart';
import 'package:flutter/material.dart';

class Proxima3 extends StatelessWidget {
  const Proxima3({super.key});

  @override
  Widget build(BuildContext context) {
    return Template2(
      bgImage: 'assets/image3.png',
      title: 'Proxima Centauri b',
      currentPage: 3,
      totalPages: 6,
      nextWidget: Proxima4(),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/proxima.png',
              scale: 1.5,
            ),
            TextBox1(
              text:
                  'One day, Proxima Centauri b got really curious and decided to send a message to the Sun. The message traveled across the stars, hopping from one to another, until it finally reached the Sun.',
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
