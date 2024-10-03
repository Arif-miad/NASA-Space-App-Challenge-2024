import 'package:exofun/super_earth/components/button1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Proxima601 extends StatefulWidget {
  const Proxima601({super.key});

  @override
  State<Proxima601> createState() => _Proxima601State();
}

class _Proxima601State extends State<Proxima601> {
  String text = 'Click on the Sky, Hills or Ground to learn more!!';
  final String _url = 'https://svs.gsfc.nasa.gov/4777/';
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
            image: AssetImage('assets/image6-1.png'),
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
                            'Proxima Centauri b faces intense space weather with stellar winds 2000 times stronger than Earth\'s, causing rapid and extreme atmospheric changes.';
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50.0, left: 30),
                      child: Container(
                        color: Colors.green.withOpacity(0),
                        height: 135,
                        width: 135,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        text =
                            'Proxima Centauri b is a super-Earth exoplanet that orbits an M-type star, located just 0.04856 AU away from its star. It was discovered in 2016 and is part of a system with three stars and one known planet.';
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 50),
                      child: Container(
                        color: Colors.amber.withOpacity(0),
                        height: 135,
                        width: 460,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: InkWell(
                      child: Button1(text: 'Nasa Data'),
                      onTap: () {
                        _launchURL(_url);
                      },
                    ),
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
                            'Proxima b could be a rocky "ocean planet" with a global ocean similar to those on icy moons like Europa and Enceladus. Its composition may also be like Mercury\'s, with a large metal core making up two-thirds of its mass.';
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                        color: Colors.cyan.withOpacity(0),
                        height: 125,
                        width: 270,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
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
