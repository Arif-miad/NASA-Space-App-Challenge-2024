import 'package:exofun/super_earth/components/template1.dart';
import 'package:exofun/super_earth/introduction/intro11.dart';
import 'package:flutter/material.dart';

class Intro10 extends StatelessWidget {
  const Intro10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Template1(
        serial: '01',
        title: 'Super-Earths and Mini-Neptunes',
        text: '',
        image: 'assets/intro10.png',
        serialNum: 10,
        totalPages: 19,
        nextWidget: Intro11(),
      ),
    );
  }
}
