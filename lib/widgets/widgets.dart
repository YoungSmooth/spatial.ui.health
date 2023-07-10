import 'package:flutter/material.dart';

class OrgansWidget extends StatelessWidget {
  const OrgansWidget({
    super.key,
    required this.organImageLink,
    required this.organName,
  });
  final String organImageLink;
  final String organName;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 0.5, color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Column(
          children: [
            Image.asset(organImageLink),
            Text(
              organName,
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
