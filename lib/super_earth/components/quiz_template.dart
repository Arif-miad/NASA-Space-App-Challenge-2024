import 'package:exofun/super_earth/components/quiz_button.dart';
import 'package:exofun/super_earth/components/text_box_4.dart';
import 'package:exofun/super_earth/components/title_container.dart';
import 'package:flutter/material.dart';

class QuizTemplate extends StatelessWidget {
  final int number;
  final int correctAnswer;
  final String question;
  final String answerA;
  final String answerB;
  final String answerC;
  final String answerD;
  final Widget nextPage;
  const QuizTemplate({
    super.key,
    required this.number,
    required this.question,
    required this.answerA,
    required this.answerB,
    required this.answerC,
    required this.answerD,
    required this.correctAnswer,
    required this.nextPage,
  });

  @override
  Widget build(BuildContext context) {
    checkAnswer(int number) {
      if (correctAnswer == number) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return nextPage;
            },
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Wrong Answer!'),
            duration: Duration(seconds: 1),
          ),
        );
      }
    }

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image3.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TitleContainer(text: 'Question $number'),
              TextBox4(text: 'What are Exoplanets?'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 50.0),
                      child: QuizButton(
                        option: 'A',
                        text: answerA,
                      ),
                    ),
                    onTap: () {
                      checkAnswer(1);
                    },
                  ),
                  InkWell(
                    onTap: () {
                      checkAnswer(2);
                    },
                    child: QuizButton(
                      option: 'B',
                      text: answerB,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      checkAnswer(3);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 50.0),
                      child: QuizButton(
                        option: 'C',
                        text: answerC,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      checkAnswer(4);
                    },
                    child: QuizButton(
                      option: 'D',
                      text: answerD,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
