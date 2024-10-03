import 'package:exofun/super_earth/components/template1.dart';
import 'package:exofun/super_earth/introduction/intro2.dart';
import 'package:flutter/material.dart';

class Intro1 extends StatelessWidget {
  const Intro1({super.key});

  @override
  Widget build(BuildContext context) {
    return Template1(
      serial: '',
      title: 'What is a Super Earth?',
      text: 'Let\'s find out.',
      image: 'assets/intro1.png',
      serialNum: 1,
      totalPages: 19,
      nextWidget: Intro2(),
    );
  }
}
