import 'package:exofun/levels_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Hello extends StatelessWidget {
  final String name;
  final String age;
  const Hello({super.key, required this.name, required this.age});

  @override
  Widget build(BuildContext context) {
    String finalName = name;
    if (name == '') {
      finalName = 'Explorer';
    }
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image3.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/robot1.png'),
              const SizedBox(width: 5),
              Container(
                height: 250,
                width: 600,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF001584),
                      Color(0xFF31B9E4),
                    ],
                    stops: [0.0035, 0.9965],
                  ),
                  border: Border.all(
                    color: Colors.white,
                    width: 3,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF223DCB).withOpacity(0.5),
                      offset: Offset(0, 4),
                      blurRadius: 30,
                    ),
                    BoxShadow(
                      color: Color(0xFF223DCB).withOpacity(0.5),
                      offset: Offset(0, 4),
                      blurRadius: 10,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber,
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 30,
                    bottom: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hi, $finalName! I love gazing at the night sky and dreaming of distant worlds. When I learned about exoplanets, I wanted an easier way to explore them. Join me on a fun adventure with stories and quizzes as we uncover the mysteries of exoplanets and the universe together!',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.istokWeb(
                          fontSize: 19,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                            colors: [
                              Color(0xFF31B9E4),
                              Color(0xFF001584),
                            ],
                            stops: [0.0035, 0.9965],
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                vertical: 13, horizontal: 40),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                color: Colors.white,
                                width: 3,
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LevelsPage(),
                              ),
                              (Route<dynamic> route) => false,
                            );
                          },
                          child: Text(
                            'Start',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
