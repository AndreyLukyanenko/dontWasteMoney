import 'package:flutter/material.dart';

import '../constans.dart';

class BudgetListItem extends StatelessWidget {
  const BudgetListItem({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.1,
      margin: EdgeInsets.only(
        left: size.height * 0.04,
        right: size.height * 0.04,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: Colors.grey[300]),
        // color: Colors.grey,
      ),
      child: ListTile(
        leading: Container(
          child: Icon(
            Icons.delete,
            color: kBlackColor,
            size: size.height * 0.05,
          ),
        ),
        title: Text("Without Category"),
        subtitle: Text(
          "\$1.7k",
          style: TextStyle(
            fontSize: size.height * 0.025,
            letterSpacing: 1.0,
          ),
        ),
        trailing: Icon(
          Icons.expand_more,
          color: kBlackColor,
        ),
      ),
    );
  }
}
