import 'package:exofun/super_earth/components/template1.dart';
import 'package:exofun/super_earth/introduction/intro4.dart';
import 'package:flutter/material.dart';

class Intro3 extends StatelessWidget {
  const Intro3({super.key});

  @override
  Widget build(BuildContext context) {
    return Template1(
      serial: '',
      title: 'What are 5 Key Facts About Super-Earth Planets?',
      text: '',
      image: 'assets/intro3.png',
      serialNum: 3,
      totalPages: 19,
      nextWidget: Intro4(),
    );
  }
}
