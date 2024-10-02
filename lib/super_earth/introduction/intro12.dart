import 'package:exofun/super_earth/components/template1.dart';
import 'package:exofun/super_earth/introduction/intro13.dart';
import 'package:flutter/material.dart';

class Intro12 extends StatelessWidget {
  const Intro12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Template1(
        serial: 'The super-Earth,',
        title: 'TOI 270b,',
        text:
            'is 25% larger than Earth and orbits every 3.4 days.The mini-Neptunes, TOI 270 c and d, are 2.4 and 2.1 times larger, orbiting every 5.7 and 11.4 days. TOI 270 d may have a rocky core but is too warm for liquid water.',
        image: 'assets/intro12.png',
        serialNum: 12,
        totalPages: 19,
        nextWidget: Intro13(),
      ),
    );
  }
}
