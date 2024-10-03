import 'package:exofun/exoplanet/exo1.dart';
import 'package:exofun/super_earth/map.dart';
import 'package:flutter/material.dart';

class Level {
  final String title;
  final String subtitle;
  final Color backgroundColor;
  final String imagePath;
  final BoxDecoration decor;
  final Widget level;

  Level(
      {required this.title,
      required this.subtitle,
      required this.backgroundColor,
      required this.imagePath,
      required this.decor,
      required this.level});
}

class LevelsPage extends StatelessWidget {
  final List<Level> levels = [
    Level(
      level: Exo1(),
      title: 'Exoplanet',
      subtitle: 'Introduction to exoplanets',
      backgroundColor: Colors.red,
      imagePath: 'assets/exo.png',
      decor: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromRGBO(70, 0, 97, 0.6),
            Color.fromRGBO(192, 158, 212, 0.6),
          ],
          stops: [0.0035, 0.9965],
        ),
      ),
    ),
    Level(
      title: 'Super Earth',
      level: LevelMap(),
      subtitle:
          'Explore Super-Earths, larger than Earth with unique possibilities',
      backgroundColor: Colors.green,
      imagePath: 'assets/superEarth.png',
      decor: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFF97EBEB),
            Color(0xFF0C7E7E),
          ],
          stops: [0.0217, 0.9783],
        ),
      ),
    ),
    Level(
      title: 'Neptune Like',
      level: LevelDetailPage(level: 'Neptune'),
      subtitle: 'Discover icy Neptune-like worlds in this cosmic adventure',
      backgroundColor: Colors.blue,
      imagePath: 'assets/neptuneLike.png',
      decor: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFF8D9FFF),
            Color(0xFF04135F),
          ],
          stops: [0.0, 0.9681],
        ),
      ),
    ),
    Level(
      title: 'Terrestrial',
      level: LevelDetailPage(level: 'Exoplanet'),
      subtitle: 'Discover rocky, Earth-like planets with solid surfaces',
      backgroundColor: Colors.orange,
      imagePath: 'assets/terrestrial.png',
      decor: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFFD6B699),
            Color(0xFFA57446),
          ],
          stops: [0.0011, 0.9989],
        ),
      ),
    ),
    Level(
      title: 'Gas Giant',
      level: LevelDetailPage(level: 'Exoplanet'),
      subtitle:
          'Explore the vast, swirling gas giants beyond our solar system.',
      backgroundColor: Colors.purple,
      imagePath: 'assets/gasGiants.png',
      decor: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFFC47D7D),
            Color(0xFF7B2D2D),
          ],
          stops: [0.0046, 0.9968],
        ),
      ),
    ),
  ];

  LevelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/image3.png',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              AppBar(
                title: const Text(
                  'Exo',
                  style: TextStyle(fontSize: 45),
                ),
                centerTitle: true,
                backgroundColor: Colors.transparent,
                elevation: 0,
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings,
                      size: 30,
                    ),
                  ),
                ],
                leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu),
                ),
              ),
              Expanded(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    double cardWidth = constraints.maxWidth / 5 - 20;
                    double cardHeight = constraints.maxHeight / 2;
                    return Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: levels.map((level) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => level.level),
                              );
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                width: cardWidth,
                                height: cardHeight * 1.3,
                                decoration: level.decor,
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      level.imagePath,
                                      width: cardWidth * 0.5,
                                      height: cardHeight * 0.5,
                                    ),
                                    const SizedBox(height: 15),
                                    Text(
                                      level.title,
                                      style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    const SizedBox(height: 5),
                                    SizedBox(
                                      height: 60,
                                      child: Text(
                                        level.subtitle,
                                        style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white70),
                                        textAlign: TextAlign.center,
                                        maxLines: 5,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LevelDetailPage extends StatelessWidget {
  final String level;

  const LevelDetailPage({super.key, required this.level});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(level),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Welcome to $level',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
