import 'package:dontWasteMoney/constans.dart';
import 'package:flutter/material.dart';

class MainHeader extends StatefulWidget {
  @override
  _MainHeaderState createState() => _MainHeaderState();
}

class _MainHeaderState extends State<MainHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Dont Waste Your Money",
        style: TextStyle(
          color: kBlackColor,
          fontWeight: FontWeight.bold,
          fontFamily: 'DM Sans',
          fontSize: 20,
        ),
      ),
    );
  }
}
