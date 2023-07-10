import 'package:flutter/material.dart';

class OrgansWidget extends StatelessWidget {
  const OrgansWidget({
    super.key,
    required this.organImageLink,
    // required this.organName,
  });
  final String organImageLink;
  // final String organName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Container(
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
                  height: 100,
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
    );
  }
}
