import 'package:exofun/super_earth/components/template1.dart';
import 'package:exofun/super_earth/introduction/intro7.dart';
import 'package:flutter/material.dart';

class Intro6 extends StatelessWidget {
  const Intro6({super.key});

  @override
  Widget build(BuildContext context) {
    return Template1(
      serial: '03',
      title: 'Water World',
      text:
          'Kepler-22b is a super-Earth that could be covered in a super ocean.',
      image: 'assets/intro6.png',
      serialNum: 6,
      totalPages: 19,
      nextWidget: Intro7(),
    );
  }
}
