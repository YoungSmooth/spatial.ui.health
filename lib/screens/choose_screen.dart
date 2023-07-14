import 'package:flutter/material.dart';
import 'package:spatial_ui_health/screens/desktop_screen.dart';
import 'package:spatial_ui_health/screens/mobile_screen.dart';

class ScreenSelector extends StatefulWidget {
  const ScreenSelector({super.key});

  @override
  State<ScreenSelector> createState() => _ScreenSelectorState();
}

class _ScreenSelectorState extends State<ScreenSelector> {
  @override
  Widget build(BuildContext context) {
    bool isDesktop(BuildContext context) =>
        MediaQuery.of(context).size.width >= 1000;
    // &&
    // MediaQuery.of(context).size.height >= 666;
    return isDesktop(context) ? const DesktopScreen() : const MobileScreen();
  }
}
