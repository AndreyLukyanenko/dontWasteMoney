import 'package:dontWasteMoney/constans.dart';
import 'package:flutter/material.dart';
import 'Screens/Wellcome/body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dont Waste Your Money',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: kPinkColor,
        fontFamily: "DMSans",
      ),
      home: WellcomeScreen(),
    );
  }
}
