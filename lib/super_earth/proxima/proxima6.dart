import 'package:exofun/levels_page.dart';
import 'package:exofun/super_earth/components/button1.dart';
import 'package:exofun/super_earth/components/button2.dart';
import 'package:exofun/super_earth/components/text_box_1.dart';
import 'package:exofun/super_earth/components/title_container.dart';
import 'package:exofun/super_earth/introduction/intro1.dart';
import 'package:exofun/super_earth/proxima/proxima601.dart';
import 'package:exofun/super_earth/proxima/proxima701.dart';
import 'package:exofun/super_earth/proxima/proxima901.dart';
import 'package:flutter/material.dart';

class Proxima6 extends StatelessWidget {
  const Proxima6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/image3.png'), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: TitleContainer(text: 'Proxima Centauri b'),
              ),
              SizedBox(
                //color: Colors.amber,
                height: 250,
                width: 800,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextBox1(
                        text:
                            'In this section, you can learn more about Proxima Centauri b in an exciting way. So, why stop now? Keep going!',
                        extraWidth: -250,
                      ),
                      Image.asset('assets/proxima.png'),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Button2(
                            text: 'Scenarios',
                            image: 'assets/scenarios.png',
                            onClick: Proxima601(),
                          ),
                          Button2(
                            text: 'Method',
                            image: 'assets/method.png',
                            onClick: Intro1(),
                          ),
                          Button2(
                            text: 'Comparison',
                            image: 'assets/comparisons.png',
                            onClick: Proxima701(),
                          ),
                          Button2(
                            text: 'Telescope',
                            image: 'assets/Telescope.png',
                            onClick: Proxima901(),
                          ),
                          Button2(
                            text: '3d Models',
                            image: 'assets/3d.png',
                            onClick: Intro1(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 20.0,
                  left: 30,
                  right: 30,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: InkWell(
                        child: Button1(text: 'Back'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Expanded(
                      child: LinearProgressIndicator(
                        value: 1,
                        backgroundColor: Colors.grey[300],
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                        minHeight: 10,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: InkWell(
                        child: Button1(text: 'Finish'),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return LevelsPage();
                            },
                          ));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
