import 'package:exofun/super_earth/components/button1.dart';
import 'package:exofun/super_earth/components/button3.dart';
import 'package:exofun/super_earth/components/container1.dart';
import 'package:exofun/super_earth/components/text_box_3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Template3 extends StatefulWidget {
  final String backgroundImage;
  final String planetImage;
  final double planetImageScale;
  final List<List<String>> data;
  const Template3({
    super.key,
    required this.data,
    required this.backgroundImage,
    required this.planetImage,
    this.planetImageScale = 1,
  });

  @override
  State<Template3> createState() => _Template3State();
}

class _Template3State extends State<Template3> {
  int index = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(widget.backgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 350,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  //color: Colors.white.withOpacity(0.2),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button3(
                      height: 50,
                      width: 250,
                      text: 'COMPARISON',
                    ),
                    Container1(
                      height: 230,
                      width: 250,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 20.0,
                                bottom: 16.0,
                              ),
                              child: Text(
                                'Comparing ${widget.data[index][0]}',
                                style: GoogleFonts.istokWeb(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Text(
                              widget.data[index][1],
                              style: GoogleFonts.istokWeb(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
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
              Container1(
                height: 350,
                width: 550,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0),
                          child: TextBox3(
                            text: widget.data[index][2],
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Image.asset(
                              widget.planetImage,
                              scale: 1.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0),
                          child: TextBox3(
                            text: widget.data[index][3],
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Image.asset(
                              'assets/earth.png',
                              scale: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          child: index == 0
                              ? sideButtonSelected('MASS')
                              : sideButton('MASS'),
                          onTap: () {
                            setState(() {
                              index = 0;
                            });
                          },
                        ),
                        InkWell(
                          child: index == 1
                              ? sideButtonSelected('RADIUS')
                              : sideButton('RADIUS'),
                          onTap: () {
                            setState(() {
                              index = 1;
                            });
                          },
                        ),
                        InkWell(
                          child: index == 2
                              ? sideButtonSelected('ORBIT')
                              : sideButton('ORBIT'),
                          onTap: () {
                            setState(() {
                              index = 2;
                            });
                          },
                        ),
                        InkWell(
                          child: index == 3
                              ? sideButtonSelected('TYPE')
                              : sideButton('TYPE'),
                          onTap: () {
                            setState(() {
                              index = 3;
                            });
                          },
                        ),
                        InkWell(
                          child: index == 4
                              ? sideButtonSelected('ATMOSPHERE')
                              : sideButton('ATMOSPHERE'),
                          onTap: () {
                            setState(() {
                              index = 4;
                            });
                          },
                        ),
                        InkWell(
                          child: index == 5
                              ? sideButtonSelected('HABITABILITY')
                              : sideButton('HABITABILITY'),
                          onTap: () {
                            setState(() {
                              index = 5;
                            });
                          },
                        ),
                      ],
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

Widget sideButton(String text) {
  return Container1(
    height: 40,
    width: 120,
    child: Center(
      child: Text(
        text,
        style: GoogleFonts.istokWeb(
          color: Colors.white,
          fontSize: 15,
        ),
      ),
    ),
  );
}

Widget sideButtonSelected(String text) {
  return Container(
    height: 40,
    width: 120,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.blue.withOpacity(0.6),
      border: Border.all(color: Color(0xFF24CACA)),
    ),
    child: Center(
      child: Text(
        text,
        style: GoogleFonts.istokWeb(
          color: Colors.white,
          fontSize: 15,
        ),
      ),
    ),
  );
}
