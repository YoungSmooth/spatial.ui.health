import 'package:flutter/material.dart';
import 'package:blur/blur.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:spatial_ui_health/constants/constants.dart';
import 'package:spatial_ui_health/widgets/widgets.dart';

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
      height: 500,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey.shade700),
          borderRadius: BorderRadius.circular(30)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: TransparentBackgroundMain(),
      ),
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
  final List<Map<String, dynamic>> _organs = [
    {'Organ Link': 'assets/heart.png', 'Organ Name': 'Heart'},
    {'Organ Link': 'assets/liver.png', 'Organ Name': 'Liver'},
    {'Organ Link': 'assets/brain.png', 'Organ Name': 'Brain'},
    {'Organ Link': 'assets/heart.png', 'Organ Name': 'Heart'},
    {'Organ Link': 'assets/liver.png', 'Organ Name': 'Liver'},
    {'Organ Link': 'assets/brain.png', 'Organ Name': 'Brain'},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.7),
      ),
      child: Row(
        children: [
          Flexible(
            fit: FlexFit.loose,
            flex: 1,
            child: Column(
              children: [
                // top view, icon, Diagnose, my Heart
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 25, top: 0, bottom: 30),
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
                            BlueIconAndText(
                              text: 'My Heart',
                            ),
                          ),
                        ),
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
                              )
                                  .animate(
                                    onComplete: (controller) {
                                      controller.reverse();
                                      controller.repeat();
                                    },
                                  )
                                  .flipV(
                                    duration: Duration(seconds: 5),
                                  )
                                  .flipH(
                                    duration: Duration(seconds: 10),
                                  ),
                              Text(
                                'Conditions',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 40,
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )),
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Center(
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
                                    child: Image.asset(
                                      'assets/heart.png',
                                    ).animate(
                                      autoPlay: true,
                                      onComplete: (controller) {
                                        controller.repeat(
                                          reverse: true,
                                          period: Duration(seconds: 1),
                                        );
                                      },
                                      effects: [
                                        ScaleEffect(
                                          duration: Duration(seconds: 1),
                                          delay: Duration(seconds: 0),
                                          begin: Offset(0.8, 0.9),
                                          end: Offset(1.0, 1.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned.fill(
                                  left: 110,
                                  bottom: 110,
                                  right: 100,
                                  top: 110,
                                  child: FittedBox(
                                    child: SizedBox(
                                      height: 30,
                                      width: 30,
                                      child: TinyCircleDotsForHeart(),
                                    ),
                                  ),
                                ),
                                Positioned.fill(
                                  left: 110,
                                  bottom: 185,
                                  right: 60,
                                  top: 35,
                                  child: FittedBox(
                                    child: SizedBox(
                                      height: 30,
                                      width: 30,
                                      child: TinyCircleDotsForHeart(),
                                    ),
                                  ),
                                ),
                                Positioned.fill(
                                  left: 140,
                                  bottom: 55,
                                  right: 60,
                                  top: 165,
                                  child: FittedBox(
                                    child: SizedBox(
                                      height: 30,
                                      width: 30,
                                      child: TinyCircleDotsForHeart(),
                                    ),
                                  ),
                                ),
                                Positioned.fill(
                                  left: 70,
                                  bottom: 95,
                                  right: 140,
                                  top: 125,
                                  child: FittedBox(
                                    child: SizedBox(
                                      height: 30,
                                      width: 30,
                                      child: TinyCircleDotsForHeart(),
                                    ),
                                  ),
                                ),
                                Positioned.fill(
                                  left: 10,
                                  bottom: 20,
                                  right: 70,
                                  top: 150,
                                  child: FittedBox(
                                    child: HeartRate(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            flex: 1,
            child: Column(
              children: [
                //search row

                Expanded(
                  flex: 7,
                  child: Container(
                    // color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 65,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(right: 20, bottom: 20),
                            child: Container(
                              // color: Colors.amber,
                              // search column
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Container(
                                              decoration: BoxDecoration(
                                                boxShadow: <BoxShadow>[
                                                  BoxShadow(
                                                    color: Colors.black,
                                                    offset: Offset(0, 3),
                                                    blurRadius: 0.001,
                                                    spreadRadius: 0.001,
                                                  ),
                                                  BoxShadow(
                                                    color: Colors.grey.shade800,
                                                    offset: Offset(0, 3),
                                                    blurRadius: 0.01,
                                                    spreadRadius: 0.01,
                                                  ),
                                                ],
                                                color: Colors.black45,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 10),
                                                      child: Text(
                                                        'Search...',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 10),
                                                      child: Icon(
                                                        Icons.search,
                                                        color: Colors.white,
                                                        size: 13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      BlueIconAndText(
                                          text: 'My Heart Condition'),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            HeartConditionContainer(
                                              firstIcon: Icons
                                                  .wallet_membership_outlined,
                                              secondIcon: Icons.label,
                                              firstText: 'Blood Status',
                                              firstText2: '118/70',
                                              secondText: '116',
                                              secondText2: 'mm',
                                              color: KGrey,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            HeartConditionContainer(
                                              firstIcon: Icons
                                                  .wallet_membership_outlined,
                                              secondIcon: Icons.label,
                                              firstText: 'Blood Status',
                                              firstText2: '118/70',
                                              secondText: '116',
                                              secondText2: 'mm',
                                              color: KGrey,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          HeartConditionContainer(
                                            firstIcon: Icons
                                                .wallet_membership_outlined,
                                            secondIcon: Icons.label,
                                            firstText: 'Blood Status',
                                            firstText2: '118/70',
                                            secondText: '116',
                                            secondText2: 'mm',
                                            color: KGrey,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          HeartConditionContainer(
                                            firstIcon: Icons
                                                .wallet_membership_outlined,
                                            secondIcon: Icons.label,
                                            firstText: 'Blood Status',
                                            firstText2: '118/70',
                                            secondText: '116',
                                            secondText2: 'mm',
                                            color: KGrey,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        //blue column
                        Expanded(
                          flex: 35,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(right: 20, bottom: 20),
                            child: Container(
                              // color: Colors.blue,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 35,
                                          width: 35,
                                          decoration: BoxDecoration(
                                            gradient: kBlue,
                                            border: Border.all(
                                                width: 0.5, color: Colors.blue),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Icon(
                                            Icons.phone,
                                            color: Colors.white,
                                            size: 13,
                                          ),
                                        ),
                                        Container(
                                          height: 35,
                                          width: 35,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 0.5,
                                                color: Colors.grey.shade400),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Icon(
                                            Icons.notifications,
                                            color: Colors.white,
                                            size: 13,
                                          ),
                                        ),
                                        CircleAvatar(
                                          backgroundImage: NetworkImage(
                                            'https://static01.nyt.com/images/2023/07/07/multimedia/07THREADS-LOGO-zmkv/07THREADS-LOGO-zmkv-articleLarge.jpg?quality=75&auto=webp&disable=upscale',
                                          ),
                                          radius: 17,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      BlueIconAndText(
                                        text: 'My Schedule',
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: Colors.grey,
                                                  width: 0.5)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: Column(
                                              children: [
                                                IconAndColumn(
                                                  icon: Icons.chair,
                                                  text: 'Next Checkup',
                                                  text2: 'Sun, 09 Jul',
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    color: Colors.grey.shade800,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      ArrowContainer(
                                                        padding:
                                                            EdgeInsets.all(5.0),
                                                        icon: Icons.arrow_back,
                                                        iconSize: 10,
                                                        iconColor: Colors.white,
                                                        backgroundColor:
                                                            Colors.grey,
                                                        borderColor:
                                                            Colors.grey,
                                                      ),
                                                      Text(
                                                        '8-Jul-23',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 9),
                                                      ),
                                                      ArrowContainer(
                                                        padding:
                                                            EdgeInsets.all(5.0),
                                                        icon:
                                                            Icons.arrow_forward,
                                                        iconSize: 10,
                                                        iconColor: Colors.white,
                                                        backgroundColor:
                                                            Colors.grey,
                                                        borderColor:
                                                            Colors.grey,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Doctors.use(),
                                                SizedBox(
                                                  height: 3,
                                                ),
                                                Doctors('Dr Samuel N',
                                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7sbYZ7Xr23FpWwq4fgHdZ-EiJKGiVRz-jYQ&usqp=CAU'),
                                                SizedBox(
                                                  height: 3,
                                                ),
                                                Doctors('Dr James O',
                                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmj2aYKfhFJMGI1dsIuz8eL5Ql3xKzLQbP2A&usqp=CAU'),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  height: 25,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      gradient: kBlue),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 10),
                                                        child: Text(
                                                          'Consult Now',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 9),
                                                        ),
                                                      ),
                                                      ArrowContainer(
                                                        padding:
                                                            EdgeInsets.all(5.0),
                                                        icon:
                                                            Icons.arrow_forward,
                                                        iconSize: 10,
                                                        iconColor: Colors.white,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        borderColor:
                                                            Colors.transparent,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      // color: Colors.red,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BlueIconAndText(
                                  text: 'My Body Condition',
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3),
                                      child: ArrowContainer.defaultIcon(),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: ArrowContainer(
                                        padding: EdgeInsets.all(3.0),
                                        icon: Icons.arrow_forward,
                                        iconSize: 10,
                                        iconColor: Colors.white,
                                        backgroundColor: Colors.transparent,
                                        borderColor: Colors.grey,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: ListView.builder(
                                physics: ScrollPhysics(),
                                itemCount: _organs.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      print(_organs[index]['Organ Name']);
                                    },
                                    child: OrgansWidget(
                                      organImageLink: _organs[index]
                                          ['Organ Link'],
                                      // organName: _organs[index]['Organ Name'],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    )
        // .frosted(frostOpacity: 0.1, frostColor: Colors.grey, blur: 7.0)
        ;
  }
}

class HeartConditionContainer extends StatelessWidget {
  const HeartConditionContainer({
    super.key,
    required this.firstIcon,
    required this.secondIcon,
    required this.firstText,
    required this.firstText2,
    required this.secondText,
    required this.secondText2,
    required this.color,
  });
  final IconData firstIcon;
  final IconData secondIcon;
  final String firstText;
  final String firstText2;
  final String secondText;
  final String secondText2;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey, width: 0.5)),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Column(
            children: [
              IconAndColumn(
                icon: firstIcon,
                text: firstText,
                text2: firstText2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    secondIcon,
                    color: Colors.white,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: color, borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 20, bottom: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            secondText,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 8,
                                color: Colors.white),
                          ),
                          Text(
                            secondText2,
                            style: TextStyle(fontSize: 7, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class IconAndColumn extends StatelessWidget {
  const IconAndColumn({
    super.key,
    required this.icon,
    required this.text,
    required this.text2,
  });
  final IconData icon;
  final String text;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Icon(
            icon,
            size: 15,
            color: Colors.white,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 9),
            ),
            Text(
              text2,
              style: TextStyle(color: Colors.white, fontSize: 9),
            ),
          ],
        )
      ],
    );
  }
}

class BlueIconAndText extends StatelessWidget {
  const BlueIconAndText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 3,
          ),
        ),
        Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 10, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}

class Doctors extends StatelessWidget {
  Doctors(
    this.doctorName,
    this.profileLink, {
    super.key,
  });
  Doctors.use()
      : profileLink =
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwqtCSynDQRoljeLFbQ5qb4z84QHY6Ijfm1w&usqp=CAU',
        doctorName = 'Dr Aproko Edwin';

  final String profileLink;
  final String doctorName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey.shade800,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(9),
              child: Image.network(profileLink),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                doctorName,
                overflow: TextOverflow.fade,
                style: TextStyle(color: Colors.white, fontSize: 9),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ArrowContainer extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final double iconSize;
  final Color backgroundColor;
  final Color borderColor;
  final EdgeInsets padding;
  ArrowContainer.defaultIcon({super.key})
      : icon = Icons.arrow_back,
        borderColor = Colors.grey,
        iconSize = 10,
        backgroundColor = Colors.transparent,
        iconColor = Colors.white,
        padding = EdgeInsets.all(3.0);
  ArrowContainer({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.iconSize,
    required this.backgroundColor,
    required this.borderColor,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          // shape: BoxShape.circle,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 0.7, color: borderColor),
          color: backgroundColor),
      child: Padding(
        padding: padding,
        child: Icon(
          icon,
          color: iconColor,
          size: iconSize,
        ),
      ),
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
      decoration: BoxDecoration(
        color: Colors.transparent.withOpacity(0.1),
      ),
      child: Center(
        child: Text(
          'Pending',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ).blurred(blurColor: Colors.transparent, blur: 15.0);
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
          backgroundColor: Colors.grey.withOpacity(0.3),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(15.0),
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
  Color borderColor = Colors.grey.shade800;
  Color mainColor = Colors.grey.withOpacity(0.3);
  // Colors.white.withOpacity(0.5);

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
      ).blurred(
          borderRadius: BorderRadius.circular(80),
          blur: 0.01,
          blurColor: Colors.white70),
    );
  }
}

class TinyCircleDotsForHeart extends StatelessWidget {
  const TinyCircleDotsForHeart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 30,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.grey.shade100,
            width: 0.5,
          ),
        ),
        child: Stack(children: [
          CircleAvatar(
            radius: double.maxFinite,
            backgroundColor: Colors.transparent.withOpacity(0.1),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                ),
              ),
            ),
          ).blurred(borderRadius: BorderRadius.circular(25), blur: 0.1).animate(
            autoPlay: true,
            onComplete: (controller) {
              controller.repeat(
                reverse: true,
                period: Duration(seconds: 5),
              );
            },
            effects: [
              FadeEffect(
                duration: Duration(seconds: 3),
              ),
              SlideEffect(
                duration: Duration(seconds: 5),
                delay: Duration(seconds: 3),
              ),
              RotateEffect(
                duration: Duration(seconds: 5),
                delay: Duration(seconds: 5),
              ),
            ],
          ),
        ]),
      ),
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
      ),
    );
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

class HeartRate extends StatelessWidget {
  const HeartRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          border: Border.all(color: Colors.grey, width: 0.5)),
      height: 200,
      width: 250,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 30, top: 10),
                  child: Icon(
                    Icons.heart_broken_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Heart Rate',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 22),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        '120 bpm',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Icon(
              Icons.waves_sharp,
              color: Colors.blue,
              size: 60,
            ),
          )
        ],
      ),
    ).blurred(borderRadius: BorderRadius.circular(25), blur: 1.1);
  }
}
