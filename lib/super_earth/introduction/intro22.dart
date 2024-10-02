import 'package:exofun/levels_page.dart';
import 'package:exofun/super_earth/components/template1.dart';
import 'package:exofun/super_earth/components/template4.dart';
import 'package:exofun/super_earth/components/template5.dart';
import 'package:exofun/super_earth/components/template7.dart';
import 'package:exofun/super_earth/introduction/intro18.dart';
import 'package:exofun/super_earth/introduction/intro23.dart';
import 'package:flutter/material.dart';

class Intro22 extends StatelessWidget {
  const Intro22({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Template7(
        customTitleText: 'Radial Velocity Method',
        text:
            'The radial velocity method finds planets by noticing a small wobble in a star. This wobble happens because a planet\'s gravity pulls on the star. As the star wobbles, its light changes slightly, showing that a planet is there.',
        gif: 'assets/transit.gif',
        nextWidget: Intro23(),
      ),
    );
  }
}
