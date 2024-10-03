import 'package:exofun/super_earth/components/template9.dart';
import 'package:exofun/super_earth/keplar/keplar8.dart';
import 'package:flutter/material.dart';

class Keplar102 extends StatelessWidget {
  const Keplar102({super.key});

  @override
  Widget build(BuildContext context) {
    return Template9(
      bgImage: 'assets/keplar_bg.png',
      customTitleText: ' Kepler 452 b',
      text:
          'Transits reveal an exoplanet not because we directly see it from many light-years away, but because the planet passing in front of its star ever so slightly dims its light. This dimming can be seen in light curves – graphs showing light received over a period of time. When the exoplanet passes in front of the star, the light curve will show a dip in brightness.',
      gif: 'assets/transit_final.gif',
      nextPage: Keplar8(),
    );
  }
}
