import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextBox3 extends StatelessWidget {
  final String text;
  const TextBox3({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 180,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 24, 131, 131),
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
          maxLines: 5,
          overflow: TextOverflow.ellipsis,
          softWrap: true,
        ),
      ),
    );
    ;
  }
}
