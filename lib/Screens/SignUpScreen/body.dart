import 'package:dontWasteMoney/components/already_have_account.dart';
import 'package:dontWasteMoney/components/input_text_field.dart';
import 'package:dontWasteMoney/components/rounded_button.dart';
import 'package:dontWasteMoney/components/text_header.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  static String route = "/sign_up";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        width: double.infinity,
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
                tag: 'mainicon',
                child: Image.asset(
                  "assets/images/grow-your-money.png",
                  height: size.height * 0.2,
                  width: size.width * 0.3,
                ),
              ),
            ),
            MainHeader(
              text: 'Dont waste money',
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            InputTextField(
              hintText: 'Login',
              onPress: () {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            InputTextField(
              hintText: 'Password',
              onPress: () {},
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            RoundedButton(
              text: 'Sign Up',
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            AlreadyHeaveAnAccountCheck(
              text: 'Already have an account ?',
              signText: 'Sign In',
              press: () {
                Navigator.pushNamed(context, "/login");
              },
            ),
          ],
        ),
      ),
    );
  }
}
