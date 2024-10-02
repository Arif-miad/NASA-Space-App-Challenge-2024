import 'package:exofun/super_earth/components/template1.dart';
import 'package:exofun/super_earth/introduction/intro9.dart';
import 'package:flutter/material.dart';

class Intro8 extends StatelessWidget {
  const Intro8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Template1(
        serial: '05',
        title: 'Frozen neighbor',
        text:
            'A dim, frozen super-Earth orbits a fast-moving star just 6 light-years away.',
        image: 'assets/intro8.png',
        serialNum: 8,
        totalPages: 19,
        nextWidget: Intro9(),
      ),
    );
  }
}
