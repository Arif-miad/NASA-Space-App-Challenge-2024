import 'package:exofun/super_earth/components/template2.dart';
import 'package:exofun/super_earth/components/text_box_1.dart';
import 'package:exofun/super_earth/keplar/keplar2.dart';
import 'package:flutter/material.dart';

class Keplar1 extends StatelessWidget {
  const Keplar1({super.key});

  @override
  Widget build(BuildContext context) {
    return Template2(
      title: 'Kepler 452 b',
      currentPage: 1,
      totalPages: 8,
      nextWidget: Keplar2(),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/keplar.png',
              scale: 1.5,
            ),
            TextBox1(
              text:
                  'Hi there! Let me tell you a story about a little planet far, far away. It’s a special story because it’s about  a curious little planet named Kepler 452 b.',
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
