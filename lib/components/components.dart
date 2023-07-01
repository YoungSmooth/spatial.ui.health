import 'package:flutter/material.dart';
import 'package:blur/blur.dart';

class MainTransparentTop extends StatelessWidget {
  const MainTransparentTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey.shade700),
          borderRadius: BorderRadius.circular(30)),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: TransparentBackgroundTop()),
    );
  }
}

class MainTransparent extends StatelessWidget {
  const MainTransparent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey.shade700),
          borderRadius: BorderRadius.circular(30)),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: TransparentBackgroundMain()),
    );
  }
}

class TransparentBackgroundMain extends StatefulWidget {
  const TransparentBackgroundMain({super.key});

  @override
  State<TransparentBackgroundMain> createState() =>
      _TransparentBackgroundMainState();
}

class _TransparentBackgroundMainState extends State<TransparentBackgroundMain> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black.withOpacity(0.7)),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
                // top view, icon, Diagnose, my Heart
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 30, top: 30, bottom: 30),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 40),
                          child: SizedBox(
                            height: 20,
                            child: Image.asset(
                              'assets/icon.png',
                            ),
                          ),
                        ),
                        ElevatedButtonStyled(
                          name: 'Diagnose',
                          textColor: Colors.white,
                          backgroundColor: Colors.transparent,
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: CurvedContainer(
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 4,
                                    backgroundColor: Colors.blue,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'My Heart',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                // Overview Conditions section
                Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 85),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: FittedBox(
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Overview',
                                strutStyle: StrutStyle(forceStrutHeight: true),
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 40,
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Conditions',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 40,
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  IconCircle1(Icons.heart_broken),
                                  IconCircle2(Icons.message_outlined),
                                  IconCircle2(Icons.receipt_long_outlined),
                                  IconCircle2(Icons.person_2_outlined),
                                  IconCircle2(Icons.menu_book_outlined),
                                ],
                              ),
                              IconCircle2(Icons.power_off_outlined),
                            ],
                          ),
                        ),
                        Center(
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: SizedBox(
                                  width: 220,
                                  height: 220,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 30, left: 30),
                                    child: CircleWithBorder(),
                                  ),
                                ),
                              ),
                              Positioned.fill(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Image.asset('assets/heart.png'),
                                ),
                              ),
                              Positioned.fill(
                                  child: SizedBox(
                                      height: 30,
                                      width: 30,
                                      child: TinyCircleDotsForHeart()))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Image.network(
                'https://www.pngmart.com/files/22/Elon-Musk-PNG.png'),
          ),
        ],
      ),
    )
        //
        .frosted(
      // frostColor: Colors.white.withOpacity(0.1),
      blur: 0.5,
    );
  }
}

class TransparentBackgroundTop extends StatefulWidget {
  const TransparentBackgroundTop({super.key});

  @override
  State<TransparentBackgroundTop> createState() =>
      _TransparentBackgroundTopState();
}

class _TransparentBackgroundTopState extends State<TransparentBackgroundTop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black.withOpacity(0.8)),
      child: Center(
        child: Text(
          'https://dribbble.com/stories/2023/06/14/spatial_ui_design?utm_campaign=2023-06-21&utm_medium=email&utm_source=insider-20230621',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ).frosted(
      frostColor: Colors.white.withOpacity(0.1),
      blur: 2.0,
    );
  }
}

class CircleWithBorder extends StatelessWidget {
  const CircleWithBorder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.grey.shade700,
          width: 1.0,
        ),
      ),
      child: Stack(children: [
        CircleAvatar(
          radius: double.maxFinite,
          backgroundColor: Colors.grey.withOpacity(0.1),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircleWithBorder1(),
          )),
        ),
      ]),
    );
  }
}

class CircleWithBorder1 extends StatefulWidget {
  CircleWithBorder1({super.key});

  @override
  State<CircleWithBorder1> createState() => _CircleWithBorder1State();
}

class _CircleWithBorder1State extends State<CircleWithBorder1> {
  Color borderColor = Colors.grey.shade700;
  Color mainColor = Colors.grey.shade400.withOpacity(0.2);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColor,
          width: 1.0,
        ),
      ),
      child: CircleAvatar(
        radius: double.maxFinite,
        backgroundColor: mainColor,
      ),
    );
  }
}

class TinyCircleDotsForHeart extends StatelessWidget {
  const TinyCircleDotsForHeart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.grey.shade700,
          width: 1.0,
        ),
      ),
      child: Stack(children: [
        CircleAvatar(
          radius: double.maxFinite,
          backgroundColor: Colors.grey.withOpacity(0.1),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircleWithBorder1(),
          )),
        ),
      ]),
    );
  }
}

class ElevatedButtonStyled extends StatelessWidget {
  final String name;
  final Color backgroundColor;
  final Color textColor;
  ElevatedButtonStyled(
      {super.key,
      required this.name,
      required this.textColor,
      required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateColor.resolveWith(
            (states) {
              // Set the desired border color and width based on the button's state
              if (states.contains(MaterialState.pressed)) {
                return backgroundColor;
              }
              return backgroundColor;
            },
          ),
          side: MaterialStateBorderSide.resolveWith(
            (states) {
              // Set the desired border color and width based on the button's state
              if (states.contains(MaterialState.pressed)) {
                return BorderSide(color: Colors.white, width: 0.5);
              }
              return BorderSide(color: Colors.grey, width: 0.5);
            },
          ),
        ),
        onPressed: null,
        child: Text(
          name,
          style: TextStyle(color: textColor, fontSize: 10),
        ));
  }
}

class CurvedContainer extends StatelessWidget {
  final Widget child;
  const CurvedContainer(this.child, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey.shade600,
          border: Border.all(width: 0.5, color: Colors.white60)),
      child: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: child,
      )),
    );
  }
}

class IconCircle1 extends StatelessWidget {
  final IconData icon;
  const IconCircle1(this.icon, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.shade600,
            border: Border.all(color: Colors.grey, width: 0.6)),
        child: IconButton(
          style: ButtonStyle(),
          onPressed: null,
          icon: Icon(
            icon,
            size: 13,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class IconCircle2 extends StatelessWidget {
  final IconData icon;
  const IconCircle2(this.icon, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.transparent,
            border: Border.all(color: Colors.grey, width: 0.4)),
        child: IconButton(
          style: ButtonStyle(),
          onPressed: null,
          icon: Icon(
            icon,
            size: 13,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
