import 'package:exofun/super_earth/components/template1.dart';
import 'package:exofun/super_earth/introduction/intro12.dart';
import 'package:flutter/material.dart';

class Intro11 extends StatelessWidget {
  const Intro11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Template1(
        serial: '',
        title: '01',
        text:
            'In 2019, NASA’s TESS discovered a super-Earth and two mini-Neptune\'s orbiting the dwarf star TOI 270, 73 light-years away. The star is 40% smaller and cooler than the Sun. ',
        image: 'assets/intro11.png',
        serialNum: 11,
        totalPages: 17,
        nextWidget: Intro12(),
      ),
    );
  }
}
