import 'package:exofun/super_earth/components/quiz_template.dart';
import 'package:exofun/super_earth/quiz/quiz3.dart';
import 'package:flutter/material.dart';

class Quiz2 extends StatelessWidget {
  const Quiz2({super.key});

  @override
  Widget build(BuildContext context) {
    return QuizTemplate(
      nextPage: Quiz3(),
      number: 2,
      question: 'What are exoplanets?',
      answerA: 'Planets in our Solar System',
      answerB: 'Planets that orbit stars outside our solar',
      answerC: 'Moons around other planets',
      answerD: 'Stars in other galaxies',
      correctAnswer: 2,
    );
  }
}
