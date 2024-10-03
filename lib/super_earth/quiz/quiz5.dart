import 'package:exofun/super_earth/components/quiz_button.dart';
import 'package:exofun/super_earth/components/quiz_template.dart';
import 'package:exofun/super_earth/introduction/intro1.dart';
import 'package:flutter/material.dart';

class Quiz5 extends StatelessWidget {
  const Quiz5({super.key});

  @override
  Widget build(BuildContext context) {
    return QuizTemplate(
      nextPage: Intro1(),
      number: 5,
      question: 'What are exoplanets?',
      answerA: 'Planets in our Solar System',
      answerB: 'Planets that orbit stars outside our solar',
      answerC: 'Moons around other planets',
      answerD: 'Stars in other galaxies',
      correctAnswer: 2,
    );
  }
}
