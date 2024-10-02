import 'package:exofun/super_earth/components/template1.dart';
import 'package:exofun/super_earth/introduction/intro18.dart';
import 'package:flutter/material.dart';

class Intro16 extends StatelessWidget {
  const Intro16({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Template1(
        serial: '',
        title: '...',
        text:
            'Spitzer\'s 80-hour infrared observation revealed a temperature swing of 2,340°F (1,300 K) between the day side, reaching 4,400°F (2,700 K), and the cooler night side at 2,060°F (1,400 K).',
        image: 'assets/intro15.png',
        serialNum: 16,
        totalPages: 19,
        nextWidget: Intro18(),
      ),
    );
  }
}
