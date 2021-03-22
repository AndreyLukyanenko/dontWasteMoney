import 'package:dontWasteMoney/Screens/LoginScreen/body.dart';
import 'package:dontWasteMoney/components/rounded_button.dart';
import 'package:dontWasteMoney/components/simple_text.dart';
import 'package:dontWasteMoney/components/text_header.dart';
import 'package:flutter/material.dart';

// Welcome, а не Wellcome :)
class WellcomeScreen extends StatelessWidget {
  static const String route = '/home';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Hero(
                tag: "mainicon",
                child: Image.asset(
                  "assets/images/grow-your-money.png",
                  height: size.height * 0.5,
                  width: size.width * 0.7,
                ),
              ),
            ),
            MainHeader(
              text: 'Dont waste money', // Используй " для того чтобы было возможно ставить апостроф.
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SimpleText(),
            SizedBox(
              height: size.height * 0.10,
            ),
            RoundedButton(
              text: 'Continue',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
