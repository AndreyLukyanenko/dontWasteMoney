import 'package:flutter/material.dart';

import '../constans.dart';

class TopCircularIcon extends StatelessWidget {
  final Color color;
  final Function onTap;
  const TopCircularIcon({
    Key key,
    @required this.size,
    this.color,
    @required this.onTap,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.07,
      width: size.width * 0.14,
      decoration: BoxDecoration(
        color: kWhiteColor,
        border: Border.all(
          // style: BorderStyle.solid,
          color: color,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(55.0),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Icon(
          Icons.date_range_outlined,
          color: kGreyColor,
        ),
      ),
    );
  }
}
