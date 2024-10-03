import 'package:exofun/levels_page.dart';
import 'package:exofun/super_earth/components/template1.dart';
import 'package:flutter/material.dart';

class Exo12 extends StatelessWidget {
  const Exo12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Template1(
        customTitleText: 'Exoplanets',
        serial: 'Congratulations',
        title: 'You\'ve just completed your first task.',
        text:
            'Keep up the great work—there\'s more to explore! Let\'s move on to the next challenge.',
        image: 'assets/intro9.png',
        serialNum: 19,
        totalPages: 19,
        nextWidget: LevelsPage(),
      ),
    );
  }
}
