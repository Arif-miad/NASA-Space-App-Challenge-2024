import 'package:exofun/super_earth/components/template2.dart';
import 'package:exofun/super_earth/components/text_box_1.dart';
import 'package:exofun/super_earth/proxima/proxima3.dart';
import 'package:flutter/material.dart';

class Proxima2 extends StatelessWidget {
  const Proxima2({super.key});

  @override
  Widget build(BuildContext context) {
    return Template2(
      title: 'Proxima Centauri b',
      currentPage: 2,
      totalPages: 6,
      nextWidget: Proxima3(),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextBox1(
              extraWidth: 100,
              text:
                  'Once upon a time, in the vastness of space, there was a tiny star named Proxima Centauri, the closest star to our Sun, but still 4.24 light-years away! Smaller and cooler than the Sun, Proxima Centauri has a little planet named Proxima b orbiting around it, like a dancer twirling.',
            ),
            Image.asset(
              'assets/robot3.png',
              scale: 1.5,
            ),
          ],
        ),
      ),
    );
  }
}
