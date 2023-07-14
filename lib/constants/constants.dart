import 'package:flutter/material.dart';

Gradient kBlue = LinearGradient(
  begin: Alignment.bottomLeft,
  end: Alignment.bottomRight,
  colors: [
    Color.fromARGB(255, 57, 69, 235),
    Color.fromARGB(255, 38, 48, 185),
    Color.fromARGB(255, 38, 48, 185),
    Color.fromARGB(255, 57, 69, 235)
  ],
);

Gradient kBlueEmpty = LinearGradient(
  begin: Alignment.bottomLeft,
  end: Alignment.bottomRight,
  colors: [
    Colors.transparent,
    Colors.transparent,
  ],
);

Color KGrey = Colors.grey.shade800;

class SvgManager {
  static const String bgDots = 'assets/bg-dots.svg';
}
