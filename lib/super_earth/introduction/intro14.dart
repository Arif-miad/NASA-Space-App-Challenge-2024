import 'package:exofun/super_earth/components/template1.dart';
import 'package:exofun/super_earth/introduction/intro15.dart';
import 'package:flutter/material.dart';

class Intro14 extends StatelessWidget {
  const Intro14({super.key});

  @override
  Widget build(BuildContext context) {
    return Template1(
      serial: '02',
      title: 'Climate patterns of a super-Earth',
      text: '',
      image: 'assets/intro10.png',
      serialNum: 14,
      totalPages: 19,
      nextWidget: Intro15(),
    );
  }
}
