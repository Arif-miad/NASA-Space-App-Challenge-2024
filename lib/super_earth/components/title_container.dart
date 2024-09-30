import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleContainer extends StatelessWidget {
  final String text;
  const TitleContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 8),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFA57446),
            Color(0xFFD6B699),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: GoogleFonts.itim(
          color: Colors.white,
          fontSize: 25,
        ),
      ),
    );
  }
}
