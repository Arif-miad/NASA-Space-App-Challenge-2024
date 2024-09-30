import 'package:exofun/super_earth/components/template1.dart';
import 'package:exofun/super_earth/introduction/intro6.dart';
import 'package:flutter/material.dart';

class Intro5 extends StatelessWidget {
  const Intro5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Template1(
        serial: '02',
        title: 'A star like our Sun',
        text:
            'Kepler-452b was the first Earth-size planet discovered around a near solar twin.',
        image: 'assets/intro5.png',
        serialNum: 5,
        totalPages: 17,
        nextWidget: Intro6(),
      ),
    );
  }
}
