import 'package:exofun/super_earth/components/button1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Template11 extends StatelessWidget {
  final String text;
  final String buttonText;
  final Widget nextPage;

  const Template11({
    super.key,
    required this.text,
    required this.buttonText,
    required this.nextPage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Opacity(
            opacity: 1,
            child: Container(
              height: 300,
              width: 550,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0x00000000),
                    Color(0xFF24CACA),
                  ],
                  stops: [0.0214, 0.958],
                ),
                color: Color(0xFF091522),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(0, -4),
                    blurRadius: 16,
                  ),
                ],
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        child: Image.asset(
                          'assets/Vector.png',
                        ),
                        onTap: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(22.0),
                    child: Text(
                      text,
                      style: GoogleFonts.istokWeb(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        child: Button1(text: buttonText),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return nextPage;
                              },
                            ),
                          );
                        },
                      ),
                      Button1(
                        text: 'NASA Data',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
