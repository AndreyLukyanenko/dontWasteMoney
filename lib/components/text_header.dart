import 'package:dontWasteMoney/constans.dart';
import 'package:flutter/material.dart';

class MainHeader extends StatelessWidget {
  final String text;
  const MainHeader({
    Key key,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
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
