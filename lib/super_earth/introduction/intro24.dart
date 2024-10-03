import 'package:exofun/super_earth/components/template7.dart';
import 'package:exofun/super_earth/introduction/intro25.dart';
import 'package:flutter/material.dart';

class Intro24 extends StatelessWidget {
  const Intro24({super.key});

  @override
  Widget build(BuildContext context) {
    return Template7(
      customTitleText: 'Gravitational Microlensing:',
      text:
          'This technique is based on Einstein’s theory of general relativity. When a massive object passes in front of a distant background star, it can bend and magnify the light from the background star. ',
      gif: 'assets/gravit.gif',
      nextWidget: Intro25(),
    );
  }
}
