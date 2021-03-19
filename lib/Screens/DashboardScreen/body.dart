import 'package:dontWasteMoney/components/text_header.dart';
import 'package:flutter/material.dart';

import '../../constans.dart';

class DashboardScreen extends StatelessWidget {
  static String route = "/dashboard";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('assets/images/andy.jpg'),
          ),
        ),
        title: Text(
          'Andrey Lukyanenko',
          style: TextStyle(
            color: kBlackColor,
            fontSize: size.width * 0.04,
            fontWeight: FontWeight.normal,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.pie_chart_outline_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.03,
            ),
            MainHeader(
              text: 'My Budget',
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              "\$ 1.7k",
              style: TextStyle(
                color: kGreyColor,
                fontSize: size.height * 0.03,
                letterSpacing: 1,
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: size.height * 0.07,
                  width: size.width * 0.2,
                  decoration: BoxDecoration(
                    color: kPinkColor,
                    borderRadius: BorderRadius.circular(45.0),
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(Icons.arrow_upward_outlined),
                  ),
                ),
                Container(
                  height: size.height * 0.07,
                  width: size.width * 0.2,
                  decoration: BoxDecoration(
                    color: kPinkColor,
                    borderRadius: BorderRadius.circular(45.0),
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(Icons.arrow_upward_outlined),
                  ),
                ),
                Container(
                  height: size.height * 0.07,
                  width: size.width * 0.14,
                  decoration: BoxDecoration(
                    color: kPinkColor,
                    borderRadius: BorderRadius.circular(55.0),
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(Icons.arrow_upward_outlined),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
