import 'package:exofun/super_earth/components/template1.dart';
import 'package:exofun/super_earth/introduction/intro8.dart';
import 'package:flutter/material.dart';

class Intro7 extends StatelessWidget {
  const Intro7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Template1(
        serial: '04',
        title: 'Closer to Home',
        text:
            'A super-Earth planet could be hiding at the edge of our own solar system.',
        image: 'assets/intro7.png',
        serialNum: 7,
        totalPages: 19,
        nextWidget: Intro8(),
      ),
    );
  }
}
