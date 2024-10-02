import 'package:exofun/super_earth/components/button1.dart';
import 'package:exofun/super_earth/components/title_container.dart';
import 'package:exofun/super_earth/introduction/intro17.dart';
import 'package:exofun/super_earth/introduction/intro21.dart';
import 'package:exofun/super_earth/introduction/intro22.dart';
import 'package:exofun/super_earth/introduction/intro24.dart';
import 'package:exofun/super_earth/introduction/intro26.dart';
import 'package:exofun/super_earth/introduction/intro28.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Intro27 extends StatelessWidget {
  const Intro27({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TitleContainer(text: 'Methods'),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        child: textBoxContainer('Transit Method'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Intro21(),
                            ),
                          );
                        },
                      ),
                      InkWell(
                        child: textBoxContainer('Radial Velocity Method'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Intro22(),
                            ),
                          );
                        },
                      ),
                      InkWell(
                        child: textBoxContainer('Gravitational Microlensing'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Intro24(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        child: textBoxContainer('Direct Imaging'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Intro26(),
                            ),
                          );
                        },
                      ),
                      InkWell(
                        child: textBoxContainer('TESS and JWST'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Intro28(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),

              //textBoxContainer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 75.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      child: Button1(text: 'Back'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(width: 20),
                    SizedBox(width: 20),
                    InkWell(
                      child: Button1(text: 'Next'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Intro17();
                            },
                          ),
                        );
                      },
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

Widget textBoxContainer(String textBoxText) {
  return Container(
    height: 110,
    width: 200,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10), // Border radius
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.25), // Shadow with opacity
          offset: Offset(0, -4), // Shadow position
          blurRadius: 16, // Shadow blur
        ),
      ],
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFFFFD885), // Gradient color 1 (hex to Color)
          Color(0x00000000), // Transparent color for gradient
          Color(0xFFFDFF91), // Gradient color 2 (hex to Color)
          Color(0xFF091522), // Base background color
        ],
        stops: [-0.0261, 0.4004, 0.6958, 1.0042], // Stops for gradient stops
      ), // Call to custom gradient function
    ),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10.0)),
      child: Center(
        child: Text(
          textBoxText,
          textAlign: TextAlign.center,
          style: GoogleFonts.istokWeb(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}
