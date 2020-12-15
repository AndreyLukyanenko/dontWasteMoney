import 'dart:ui';

import 'package:flutter/material.dart';

class SimpleText extends StatefulWidget {
  @override
  _SimpleTextState createState() => _SimpleTextState();
}

class _SimpleTextState extends State<SimpleText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'An application for easy budgeting based \n on your needs',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 17,
        ),
      ),
    );
  }
}
