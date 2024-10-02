import 'package:exofun/super_earth/components/button1.dart';
import 'package:exofun/super_earth/components/button3.dart';
import 'package:exofun/super_earth/components/title_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Intro28 extends StatelessWidget {
  const Intro28({super.key});

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  textBoxContainer(
                    text:
                        'Detects transits of Super-Earths around nearby stars.',
                    image: 'assets/intro11.png',
                    buttonText: 'TESS',
                  ),
                  textBoxContainer(
                    text:
                        'Will examine the atmospheres of Super-Earths, searching for  potential habitability.',
                    image: 'assets/jwst.png',
                    buttonText: 'JWST',
                  ),
                ],
              ),
              InkWell(
                child: Button1(text: 'Back'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget textBoxContainer(
    {required String text, required String image, required String buttonText}) {
  return Container(
    height: 250,
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
        stops: [-0.0261, 0.0304, 0.2058, 1.0042], // Stops for gradient stops
      ), // Call to custom gradient function
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Image.asset(image)),
          ),
          Text(
            text,
            style: GoogleFonts.istokWeb(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Button3(height: 30, width: 100, text: buttonText)
        ],
      ),
    ),
  );
}
