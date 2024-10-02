import 'package:exofun/super_earth/components/button1.dart';
import 'package:exofun/super_earth/components/title_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Template6 extends StatelessWidget {
  final String customTitleText;
  final String text;
  final String image;

  const Template6(
      {super.key,
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
                              // Transparent color
                              // #24CACA color
                            ],
                            stops: [
                              0.0214,
                              0.958
                            ], // Matching the gradient stops in your CSS
                          ),
                          color: Color(0xFF091522), // Background color #091522
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(0, -4), // Shadow offset
                              blurRadius: 16, // Shadow blur radius
                            ),
                          ],
                          borderRadius: BorderRadius.circular(
                              15), // Circular border radius
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 16,
                              top: 8,
                              right: 16,
                            ),
                            child: Center(
                              child: Text(
                                text,
                                style: GoogleFonts.istokWeb(
                                    fontSize: 18, color: Colors.white),
                                maxLines:
                                    8, // You can specify the number of lines
                                overflow: TextOverflow
                                    .ellipsis, // Handle overflow with ellipsis
                                softWrap:
                                    true, // Allow soft wrapping (break lines naturally)
                              ),
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
                child: InkWell(
                  child: Button1(text: 'Back'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
