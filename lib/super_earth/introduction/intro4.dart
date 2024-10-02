import 'package:exofun/super_earth/components/template1.dart';
import 'package:exofun/super_earth/introduction/intro5.dart';
import 'package:flutter/material.dart';

class Intro4 extends StatelessWidget {
  const Intro4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Template1(
        serial: '01',
        title: 'Super hot Super Earth',
        text:
            'There\'s a super-Earth exoplanet with temperatures hot enough to vaporize metal.',
        image: 'assets/intro4.png',
        serialNum: 4,
        totalPages: 19,
        nextWidget: Intro5(),
      ),
    );
  }
}
