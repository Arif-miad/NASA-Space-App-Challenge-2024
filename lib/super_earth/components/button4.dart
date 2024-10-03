import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button4 extends StatelessWidget {
  final String text;
  final String image;
  final Widget onClick;
  const Button4(
      {super.key,
      required this.text,
      required this.image,
      required this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return onClick;
            },
          ),
        );
      },
      child: Container(
        height: 90,
        width: 340,
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
          color: Colors.amber,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                text,
                style: GoogleFonts.istokWeb(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              Image.asset(image)
            ],
          ),
        ),
      ),
    );
  }
}
