import 'package:exofun/super_earth/components/template1.dart';
import 'package:exofun/super_earth/introduction/intro10.dart';
import 'package:flutter/material.dart';

class Intro9 extends StatelessWidget {
  const Intro9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Template1(
        serial: 'Congrats!',
        title: 'Now you know the 5 key facts about Super Earths.',
        text:
            'Let\'s dive into two more important topics about Super Earths. Let\'s go!',
        image: 'assets/intro1.png',
        serialNum: 9,
        totalPages: 19,
        nextWidget: Intro10(),
      ),
    );
  }
}
