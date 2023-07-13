import 'package:flutter/material.dart';

class OrgansWidget extends StatelessWidget {
  OrgansWidget({
    super.key,
    required this.organImageLink,
    required this.organName,
    this.check = false,
  });
  final String organImageLink;
  final String organName;
  bool check;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Stack(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(width: 0.5, color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      organImageLink,
                      height: 95,
                      width: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                  // Text(
                  //   organName,
                  //   style: TextStyle(color: Colors.blue, fontSize: 10),
                  // ),
                ],
              ),
            ),
          ),
          if (check = true)
            Positioned.fill(
              top: 60,
              bottom: 10,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 30,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(width: 0.5, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          organName,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Icon(
                          Icons.arrow_circle_up,
                          size: 12,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
