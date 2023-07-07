import 'package:flutter/material.dart';
import 'package:spatial_ui_health/components/components.dart';

class DesktopScreen extends StatefulWidget {
  const DesktopScreen({super.key});

  @override
  State<DesktopScreen> createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            'assets/use1.jpg',
            fit: BoxFit.fitWidth,
            width: double.infinity,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(
              flex: 1,
            ),
            Expanded(
              flex: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(
                    flex: 1,
                  ),
                  Expanded(
                    flex: 8,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          MainTransparentTop(),
                          SizedBox(
                            height: 2,
                          ),
                          MainTransparent(),
                        ],
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 1,
            ),
          ],
        )
      ]),
    );
  }
}
