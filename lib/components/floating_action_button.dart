import 'package:flutter/material.dart';

import '../constans.dart';

class FloatingButton extends StatelessWidget {
  final Function onPressed;
  const FloatingButton({
    Key key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: kBlackColor,
      child: Icon(Icons.add),
    );
  }
}
