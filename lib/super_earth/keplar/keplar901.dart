import 'package:exofun/super_earth/components/button1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Keplar901 extends StatefulWidget {
  const Keplar901({super.key});

  @override
  State<Keplar901> createState() => _Keplar901State();
}

class _Keplar901State extends State<Keplar901> {
  String text = 'Click on the Cloud, Sky or Ground to learn more!!';
  final String _url =
      'https://www.nasa.gov/image-article/spin-around-an-exoplanet-most-like-earth/';
  @override
  void initState() {
    super.initState();
  }

  Future<void> _launchURL(String url) async {
    await launchUrlString(url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/keplar_scene.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        text =
                            'Discovered in 2015, this super Earth has a radius 1.63 times that of Earth and a mass of 3.29 Earths. It orbits at 1.046 AU with a period of 384.8 days in a circular path, lying in the habitable zone and potentially supporting liquid water.';
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50.0, left: 30),
                      child: Container(
                        color: Colors.green.withOpacity(0),
                        height: 150,
                        width: 150,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        text =
                            'Due to the increased brightness of its star, Kepler-452b might experience a stronger greenhouse effect, making it potentially warmer than Earth. If it has an atmosphere, weather patterns could be more intense than on Earth due to the planet\'s larger size and energy input from its star.';
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 50),
                      child: Container(
                        color: Colors.amber.withOpacity(0),
                        height: 150,
                        width: 500,
                      ),
                    ),
                  ),
                  InkWell(
                    child: Button1(text: 'Nasa Data'),
                    onTap: () {
                      _launchURL(_url);
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100.0),
                    child: Container(
                      height: 150,
                      width: 400,
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
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        //color: Colors.amber,
                      ),
                      child: Center(
                        child: Text(
                          text,
                          style: GoogleFonts.istokWeb(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 7,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        text =
                            'Likely a rocky planet due to its size and location which have solid surfaces like Earth. With a diameter 60% larger than Earth, Kepler-452b would have significantly stronger gravity, which might make movement difficult and suggests a potentially thicker, geologically active crust​. If water exists, it could be liquid on the surface';
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                        color: Colors.cyan.withOpacity(0),
                        height: 150,
                        width: 300,
                      ),
                    ),
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
