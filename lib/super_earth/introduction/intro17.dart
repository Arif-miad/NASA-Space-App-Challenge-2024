import 'package:exofun/super_earth/components/close_template.dart';
import 'package:exofun/super_earth/map.dart';
import 'package:flutter/material.dart';

class Intro17 extends StatelessWidget {
  const Intro17({super.key});

  @override
  Widget build(BuildContext context) {
    return CloseTemplate(
      serial: 'Congratulations',
      title: 'You\'ve just completed a task.',
      text:
          'Keep up the great work—there\'s more to explore! Let\'s move on to the next challenge.',
      image: 'assets/intro9.png',
      serialNum: 19,
      totalPages: 19,
      nextWidget: LevelMap(),
    );
  }
}
