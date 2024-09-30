import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button1 extends StatelessWidget {
  final String text;
  const Button1({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 110,
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
        child: Text(
          text,
          style: GoogleFonts.istokWeb(
            fontSize: 16,
            //fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
