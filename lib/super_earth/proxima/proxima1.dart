import 'package:exofun/super_earth/components/template2.dart';
import 'package:exofun/super_earth/components/text_box_1.dart';
import 'package:exofun/super_earth/proxima/proxima2.dart';
import 'package:flutter/material.dart';

class Proxima1 extends StatelessWidget {
  const Proxima1({super.key});

  @override
  Widget build(BuildContext context) {
    return Template2(
      bgImage: 'assets/image3.png',
      title: 'Proxima Centauri b',
      currentPage: 1,
      totalPages: 6,
      nextWidget: Proxima2(),
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
                  'Hi there! Let me tell you a story about a little planet far, far away. It\'s a special story because it\'s about  a curious little planet named Proxima Centauri b.',
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
