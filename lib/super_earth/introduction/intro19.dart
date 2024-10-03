import 'package:exofun/super_earth/components/template1.dart';
import 'package:exofun/super_earth/introduction/intro27.dart';
import 'package:flutter/material.dart';

class Intro19 extends StatelessWidget {
  const Intro19({super.key});

  @override
  Widget build(BuildContext context) {
    return Template1(
      serial: '',
      title: 'There are 5 methods to detect super earths.',
      text: '',
      image: 'assets/image8.png',
      serialNum: 19,
      totalPages: 19,
      nextWidget: Intro27(),
    );
  }
}
