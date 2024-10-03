import 'package:exofun/super_earth/components/close_template.dart';
import 'package:exofun/super_earth/map.dart';
import 'package:flutter/material.dart';

class QuizEnd extends StatelessWidget {
  const QuizEnd({super.key});

  @override
  Widget build(BuildContext context) {
    return CloseTemplate(
      customTitleText: 'Quiz',
      serial: 'Congratulations',
      title: 'You\'ve just completed the Super Earth Section.',
      text:
          'Keep up the great work—there\'s more to explore! Let\'s move on to the next challenge.',
      image: 'assets/intro9.png',
      serialNum: 19,
      totalPages: 19,
      nextWidget: LevelMap(),
    );
  }
}
