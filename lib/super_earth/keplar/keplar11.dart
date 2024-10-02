import 'package:exofun/super_earth/components/template3.dart';
import 'package:flutter/material.dart';

class Keplar11 extends StatelessWidget {
  const Keplar11({super.key});

  @override
  Widget build(BuildContext context) {
    final List<List<String>> data = [
      [
        'Mass',
        'In this section, you will see the comparison of mass between Kepler 452 b and Earth.',
        'Approximately 3.29 times the mass of Earth.',
        '1 Earth mass (5.97 × 10²⁴ kg).',
      ],
      [
        'Radius',
        'Kepler 452 b’s radius is estimated to be 10% larger than Earth’s, making it slightly bigger, though still likely to be a rocky planet.',
        'Approximately 1.63 times the radius of Earth.',
        'Radius of approximately 6,371 km (1 Earth radius)',
      ],
      [
        'Orbital Period',
        'Kepler 452 b orbits its star in 385 days, much faster than Earth’s 365.25-day orbit.',
        'Takes about 385 days to complete one orbit around its star.',
        'Takes 365.25 days to orbit the Sun.',
      ],
      [
        'Type',
        'The star of Kepler-452b is 6 billion years old, 1.5 billion years older than our sun, making it larger, hotter, and brighter, resulting in a more intense environment.',
        'Orbits Kepler-452b, a G2-type star that is 6 billion years old, making it larger, hotter, and brighter than our Sun.',
        'Orbits the Sun, a G-type main-sequence star (yellow dwarf).',
      ],
      [
        'Atmosphere',
        'Kepler-452b may have an Earth-like atmosphere with unknown composition and water, but its older, brighter sun makes it distinct from Earth.',
        'Kepler-452b may have an Earth-like atmosphere, is slightly warmer, and shows blue areas of water, but its older sun creates distinct conditions.',
        'A rich atmosphere, primarily nitrogen and oxygen, supporting life.',
      ],
      [
        'Habitability',
        'Scientists have confirmed a near-Earth-size planet in the habitable zone of a sun-like star using NASA\'s Kepler mission data, where temperatures permit liquid water.',
        'In the habitable zone,  where liquid water can exist.',
        'Clearly habitable with stable conditions and abundant water.',
      ],
    ];
    return Template3(
      data: data,
      backgroundImage: 'assets/keplar_bg.png',
      planetImage: 'assets/keplar.png',
      planetImageScale: 1.5,
    );
  }
}
