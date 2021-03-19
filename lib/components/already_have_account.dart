import 'package:flutter/material.dart';

class AlreadyHeaveAnAccountCheck extends StatelessWidget {
  final String text;
  final Function press;
  final String signText;
  const AlreadyHeaveAnAccountCheck({
    Key key,
    this.press,
    this.text,
    this.signText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(
            color: Colors.grey[500],
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            signText,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}
