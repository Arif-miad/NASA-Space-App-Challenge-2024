import 'package:exofun/super_earth/components/button1.dart';
import 'package:exofun/super_earth/components/title_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CloseTemplate extends StatelessWidget {
  final int serialNum;
  final int totalPages;
  final String serial;
  final String title;
  final String customTitleText;
  final String text;
  final String image;
  final Widget nextWidget;

  const CloseTemplate(
      {super.key,
      required this.serial,
      required this.title,
      required this.text,
      required this.image,
      required this.serialNum,
      required this.totalPages,
      required this.nextWidget,
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
            image: AssetImage('assets/image3.png'),
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
                width: 700,
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
                        width: 400,
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  serial,
                                  style: GoogleFonts.istokWeb(
                                    fontSize: 29,
                                    color: Colors.amber,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 8,
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: true,
                                ),
                                Text(
                                  title,
                                  style: GoogleFonts.istokWeb(
                                    fontSize: 29,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 8,
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: true,
                                ),
                                Text(
                                  text,
                                  style: GoogleFonts.istokWeb(
                                      fontSize: 18, color: Colors.white),
                                  maxLines: 8,
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
                        width: 280,
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      child: Button1(text: 'Back'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: LinearProgressIndicator(
                        value: serialNum / totalPages,
                        backgroundColor: Colors.grey[300],
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                        minHeight: 10,
                      ),
                    ),
                    SizedBox(width: 20),
                    InkWell(
                      child: Button1(text: 'Next'),
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return nextWidget;
                            },
                          ),
                          (Route<dynamic> route) => false,
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
