import 'package:exofun/super_earth/components/template3.dart';
import 'package:flutter/material.dart';

class Proxima701 extends StatelessWidget {
  const Proxima701({super.key});

  @override
  Widget build(BuildContext context) {
    final List<List<String>> data = [
      [
        'Mass',
        'In this section, you will see the comparison of mass between Proxima Centauri b and Earth.',
        'Approximately 1.17 times the mass of Earth.',
        '1 Earth mass (5.97 × 10²⁴ kg).',
      ],
      [
        'Radius',
        'Proxima Centauri b’s radius is estimated to be 10-30% larger than Earth’s, making it slightly bigger, though still likely to be a rocky planet.',
        'Estimated at 1.1 to 1.3 Earth radii (7,000 to 8,300 km).',
        'Radius of approximately 6,371 km (1 Earth radius)',
      ],
      [
        'Orbital Period',
        'Proxima Centauri b orbits its star in 11.2 days, much faster than Earth’s 365.25-day orbit. ',
        'Takes about 11.2 days to complete one orbit around its star.',
        'Takes 365.25 days to orbit the Sun.',
      ],
      [
        'Type',
        'Proxima Centauri is a smaller, cooler, and more active red dwarf, making Earth’s environment more stable and safer compared to Proxima Centauri b.',
        'Orbits Proxima Centauri, a red dwarf star (M-type), which is much smaller, cooler, and dimmer than the Sun.',
        'Orbits the Sun, a G-type main-sequence star (yellow dwarf).',
      ],
      [
        'Atmosphere',
        'Proxima Centauri b\'s atmosphere is unknown and could be thin or absent. Earth has a rich atmosphere crucial for life and stability.',
        'Unknown, though its atmosphere may be thin or non-existent, depending on conditions and stellar activity.',
        'A rich atmosphere, primarily nitrogen and oxygen, supporting life.',
      ],
      [
        'Habitability',
        'Proxima Centauri b might be habitable, but its star\'s volatility could be a problem. Earth supports life with its stable star and protective atmosphere',
        'In the habitable zone, but flares and proximity to its star could impact habitability.',
        'Clearly habitable with stable conditions and abundant water.',
      ],
    ];
    return Template3(
      data: data,
      backgroundImage: 'assets/image3.png',
      planetImage: 'assets/proxima.png',
      planetImageScale: 1.5,
    );
  }
}
