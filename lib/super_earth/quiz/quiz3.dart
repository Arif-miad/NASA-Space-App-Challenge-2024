import 'package:exofun/super_earth/components/quiz_template.dart';
import 'package:exofun/super_earth/quiz/quiz4.dart';
import 'package:flutter/material.dart';

class Quiz3 extends StatelessWidget {
  const Quiz3({super.key});

  @override
  Widget build(BuildContext context) {
    return QuizTemplate(
      nextPage: Quiz4(),
      number: 3,
      question:
          'How long does it take for Proxima Centauri b to orbit its star?',
      answerA: '365.25 days',
      answerB: '11.2 days',
      answerC: '100 days',
      answerD: '30 days',
      correctAnswer: 2,
    );
  }
}
