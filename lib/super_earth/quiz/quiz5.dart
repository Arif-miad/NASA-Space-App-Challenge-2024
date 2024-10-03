import 'package:exofun/super_earth/components/quiz_template.dart';
import 'package:exofun/super_earth/quiz/quiz_end.dart';
import 'package:flutter/material.dart';

class Quiz5 extends StatelessWidget {
  const Quiz5({super.key});

  @override
  Widget build(BuildContext context) {
    return QuizTemplate(
      nextPage: QuizEnd(),
      number: 5,
      question:
          'By what percentage is Proxima Centauri b’s radius estimated to be larger than Earth’s?',
      answerA: '5-15%',
      answerB: '10-30%',
      answerC: '20-40%',
      answerD: '30-50%',
      correctAnswer: 2,
    );
  }
}
