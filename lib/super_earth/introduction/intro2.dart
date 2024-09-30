import 'package:exofun/super_earth/components/template1.dart';
import 'package:exofun/super_earth/introduction/intro3.dart';
import 'package:flutter/material.dart';

class Intro2 extends StatelessWidget {
  const Intro2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Template1(
        serial: '',
        title: 'Super Earth',
        text:
            'Super-Earths are exoplanets larger than Earth but smaller than Neptune, with masses up to 10 times that of Earth. They can be made of gas, rock, or a mix of both, and aren\'t necessarily similar to Earth.',
        image: 'assets/intro2.png',
        serialNum: 2,
        totalPages: 17,
        nextWidget: Intro3(),
      ),
    );
  }
}
