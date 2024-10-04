import 'package:exofun/super_earth/components/button1.dart';
import 'package:exofun/super_earth/components/title_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Template12 extends StatelessWidget {
  final String title;
  final String customTitleText;
  final String text;
  final String image;

  const Template12(
      {super.key,
      required this.title,
      required this.text,
      required this.image,
      this.customTitleText = ''});

  @override
  Widget build(BuildContext context) {
    String titleText = 'Super Earth Introduction';
    if (customTitleText != '') {
      titleText = customTitleText;
    }
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg2.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TitleContainer(text: titleText),
              Container(
                height: 250,
                width: 750,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white.withOpacity(0.2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Opacity(
                      opacity: 0.8,
                      child: Container(
                        height: 250,
                        width: 350,
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
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 16,
                              top: 8,
                              right: 16,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  title,
                                  style: GoogleFonts.istokWeb(
                                    fontSize: 29,
                                    color: Colors.amber,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 10,
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: true,
                                ),
                                Text(
                                  text,
                                  style: GoogleFonts.istokWeb(
                                      fontSize: 16, color: Colors.white),
                                  maxLines: 9,
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: true,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 8.0, top: 8.0, bottom: 8.0),
                      child: Container(
                        height: 250,
                        width: 380,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          image,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 75.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      child: Button1(text: 'Back'),
                      onTap: () {
                        Navigator.pop(context);
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
