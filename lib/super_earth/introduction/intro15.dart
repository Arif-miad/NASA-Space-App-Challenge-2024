import 'package:exofun/super_earth/components/template1.dart';
import 'package:exofun/super_earth/introduction/intro16.dart';
import 'package:flutter/material.dart';

class Intro15 extends StatelessWidget {
  const Intro15({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Template1(
        serial: '',
        title: '02',
        text:
            'In 2016, NASA\'s Spitzer Space Telescope mapped extreme temperature differences on the super-Earth 55 Cancri e, likely due to lava flows. Located 41 light-years away, the tidally locked planet orbits its star every 18 hours.',
        image: 'assets/intro15.png',
        serialNum: 15,
        totalPages: 19,
        nextWidget: Intro16(),
      ),
    );
  }
}
