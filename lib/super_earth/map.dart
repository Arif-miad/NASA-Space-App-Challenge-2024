import 'package:exofun/levels_page.dart';
import 'package:exofun/super_earth/components/button1.dart';
import 'package:exofun/super_earth/components/title_container.dart';
import 'package:exofun/super_earth/introduction/intro1.dart';
import 'package:exofun/super_earth/keplar/keplar1.dart';
import 'package:exofun/super_earth/proxima/proxima1.dart';
import 'package:flutter/material.dart';

class LevelMap extends StatelessWidget {
  const LevelMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image3.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TitleContainer(text: 'Super Earth'),
              Container(
                height: 250,
                width: 750,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xFF24CACA))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          child: Image.asset(
                            'assets/intro.png',
                            fit: BoxFit.cover,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Intro1();
                                },
                              ),
                            );
                          },
                        ),
                        InkWell(
                          child: Image.asset(
                            'assets/proxima_icon.png',
                            fit: BoxFit.cover,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Proxima1();
                                },
                              ),
                            );
                          },
                        ),
                        InkWell(
                          child: Container(
                            child: Image.asset(
                              'assets/game.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Intro1();
                                },
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          child: Container(
                            child: Image.asset(
                              'assets/keplar_icon.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Keplar1();
                                },
                              ),
                            );
                          },
                        ),
                        InkWell(
                          child: Container(
                            child: Image.asset(
                              'assets/quiz.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Intro1();
                                },
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              InkWell(
                child: Button1(text: 'Back'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LevelsPage();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
