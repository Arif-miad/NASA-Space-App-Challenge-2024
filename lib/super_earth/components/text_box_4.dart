import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextBox4 extends StatelessWidget {
  final String text;
  final double extraWidth;
  const TextBox4({
    super.key,
    required this.text,
    this.extraWidth = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 650 + extraWidth,
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
        borderRadius: BorderRadius.circular(20),
        color: Colors.amber,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            text,
            style: GoogleFonts.istokWeb(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            //textAlign: TextAlign.center,
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
          ),
        ),
      ),
    );
  }
}
