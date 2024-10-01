import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button3 extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  const Button3(
      {super.key,
      required this.height,
      required this.width,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black.withOpacity(0.6),
        border: Border.all(color: Color(0xFF24CACA)),
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.istokWeb(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
