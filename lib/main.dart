import 'package:dontWasteMoney/Screens/DashboardScreen/body.dart';
import 'package:dontWasteMoney/Screens/LoginScreen/body.dart';
import 'package:dontWasteMoney/Screens/SignUpScreen/body.dart';
import 'package:dontWasteMoney/constans.dart';
import 'package:flutter/material.dart';
import 'Screens/Wellcome_screen/body.dart';

void main() {
  runApp(DontWasteMoneyApp());
}

class DontWasteMoneyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Don't Waste Your Money",
      theme: ThemeData(
        scaffoldBackgroundColor: kPinkColor,
        primaryColor: kWhiteColor,
        fontFamily: 'DM Sans',
      ),
      home: DashboardScreen(),
      // Держи рауты в другом месте, лучше в отдельном файле.
      routes: {
        WelcomeScreen.route: (context) => WelcomeScreen(),
        LoginScreen.route: (context) => LoginScreen(),
        SignUpScreen.route: (context) => SignUpScreen(),
        DashboardScreen.route: (context) => DashboardScreen(),
      },
    );
  }
}
