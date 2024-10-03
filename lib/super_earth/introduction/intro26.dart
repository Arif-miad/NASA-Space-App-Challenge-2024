import 'package:exofun/super_earth/components/template5.dart';
import 'package:flutter/material.dart';

class Intro26 extends StatelessWidget {
  const Intro26({super.key});

  @override
  Widget build(BuildContext context) {
    return Template5(
      bgImage: 'assets/image3.png',
      customTitleText: 'Direct Imaging:',
      text:
          'This method captures direct images of exoplanets by blocking the star\'s light using instruments like coronagraphs. It\'s challenging due to the brightness of stars but has worked for larger planets far from their stars.',
      gif: 'assets/direct_imaging.gif',
    );
  }
}
