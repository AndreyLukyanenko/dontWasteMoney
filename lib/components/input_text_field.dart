import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final String hintText;
  final Function onPress;
  const InputTextField({
    Key key,
    @required this.hintText,
    @required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.7,
      padding: EdgeInsets.all(5.0),
      child: TextFormField(
        onTap: onPress,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey[600],
            )),
      ),
    );
  }
}
