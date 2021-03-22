import 'package:flutter/material.dart';


class TopRoundedIcon extends StatelessWidget {
  final Function onTap;
  final Icon icon;
  final Text text;
  final Border border;
  final Color color;
  const TopRoundedIcon({
    Key key,
    @required this.size,
    this.onTap,
    this.icon,
    this.text,
    this.border,
    this.color,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.07,
      width: size.width * 0.23,
      decoration: BoxDecoration(
        color: color,
        border: border,
        borderRadius: BorderRadius.circular(45.0),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            text,
          ],
        ),
      ),
    );
  }
}
