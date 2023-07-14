import 'package:flutter/material.dart';
import 'package:spatial_ui_health/constants/constants.dart';

class OrgansWidget extends StatelessWidget {
  OrgansWidget({
    super.key,
    required this.organImageLink,
    required this.organName,
    // this.check = false,
  });
  final String organImageLink;
  final String organName;
  // bool check;
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
                ],
              ),
            ),
          ),
          // if (check = true)
          Positioned.fill(
            top: 60,
            bottom: 8,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 30,
                width: 90,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  // border: Border.all(width: 0.5, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        organName,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          gradient: kBlue),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.arrow_circle_up,
                          color: Colors.white,
                          size: 12,
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
    );
  }
}
