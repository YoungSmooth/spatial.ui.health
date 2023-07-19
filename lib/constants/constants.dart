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
  static const String pulse1 = 'assets/pulse1.svg';
  static const String pulse2 = 'assets/pulse2.svg';
  static const String pulse3 = 'assets/pulse3.svg';
  static const String wave = 'assets/wave.svg';
  static const String wave2 = 'assets/wave2.svg';
  static const String wave3 = 'assets/wave3.svg';
  static const String wave5 = 'assets/wave5.svg';
}
