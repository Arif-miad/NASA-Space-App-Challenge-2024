import 'package:exofun/super_earth/components/template1.dart';
import 'package:exofun/super_earth/introduction/intro19.dart';
import 'package:flutter/material.dart';

class Intro18 extends StatelessWidget {
  const Intro18({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Template1(
        serial: '03',
        title: 'How do scientists detect super earth?',
        text: '',
        image: 'assets/image7.png',
        serialNum: 18,
        totalPages: 19,
        nextWidget: Intro19(),
      ),
    );
  }
}
