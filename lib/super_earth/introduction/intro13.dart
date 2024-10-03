import 'package:exofun/super_earth/components/template1.dart';
import 'package:exofun/super_earth/introduction/intro14.dart';
import 'package:flutter/material.dart';

class Intro13 extends StatelessWidget {
  const Intro13({super.key});

  @override
  Widget build(BuildContext context) {
    return Template1(
      serial: '',
      title: 'TOI 270',
      text:
          'This infographic illustrates key features of the TOI 270 system, located about 73 light-years away in the southern constellation Pictor.',
      image: 'assets/intro13.png',
      serialNum: 13,
      totalPages: 19,
      nextWidget: Intro14(),
    );
  }
}
