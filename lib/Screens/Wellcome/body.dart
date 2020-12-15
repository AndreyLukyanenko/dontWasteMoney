import 'package:dontWasteMoney/components/rounded_button.dart';
import 'package:dontWasteMoney/components/simple_text.dart';
import 'package:dontWasteMoney/components/text_header.dart';
import 'package:flutter/material.dart';
import '../../constans.dart';

class WellcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  "assets/images/grow-your-money.png",
                  height: size.height * 0.5,
                  width: size.width * 0.7,
                ),
              ),
              MainHeader(),
              SizedBox(
                height: size.height * 0.03,
              ),
              SimpleText(),
              SizedBox(
                height: size.height * 0.10,
              ),
              RoundedButton(
                text: 'Continue',
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
