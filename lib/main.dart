import 'package:dontWasteMoney/Screens/DashboardScreen/body.dart';
import 'package:dontWasteMoney/Screens/LoginScreen/body.dart';
import 'package:dontWasteMoney/Screens/SignUpScreen/body.dart';
import 'package:dontWasteMoney/constans.dart';
import 'package:flutter/material.dart';
import 'Screens/Wellcome_screen/body.dart';

void main() {
  // FIXME: MyApp дефолт и лучше переименовать
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dont Waste Your Money',
      theme: ThemeData(
        scaffoldBackgroundColor: kPinkColor,
        primaryColor: kWhiteColor,
        fontFamily: 'DM Sans',
      ),
      home: DashboardScreen(),
      // Держи рауты в другом месте, лучше в отдельном файле.
      routes: {
        WellcomeScreen.route: (context) => WellcomeScreen(),
        LoginScreen.route: (context) => LoginScreen(),
        SignUpScreen.route: (context) => SignUpScreen(),
        DashboardScreen.route: (context) => DashboardScreen(),
      },
    );
  }
}
