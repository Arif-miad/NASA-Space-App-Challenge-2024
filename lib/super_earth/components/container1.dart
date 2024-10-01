import 'package:flutter/material.dart';

class Container1 extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;
  const Container1(
      {super.key,
      required this.child,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.black.withOpacity(0.6),
        border: Border.all(color: Color(0xFF24CACA)),
      ),
      child: child,
    );
  }
}
