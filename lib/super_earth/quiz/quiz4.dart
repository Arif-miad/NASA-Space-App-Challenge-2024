import 'package:exofun/super_earth/components/quiz_template.dart';
import 'package:exofun/super_earth/quiz/quiz5.dart';
import 'package:flutter/material.dart';

class Quiz4 extends StatelessWidget {
  const Quiz4({super.key});

  @override
  Widget build(BuildContext context) {
    return QuizTemplate(
      nextPage: Quiz5(),
      number: 4,
      question: 'How old is the star of Kepler-452b compared to our Sun?',
      answerA: '4.5 billion years old',
      answerB: '5 billion years old',
      answerC: '6 billion years old',
      answerD: '3 billion years old',
      correctAnswer: 3,
    );
  }
}
