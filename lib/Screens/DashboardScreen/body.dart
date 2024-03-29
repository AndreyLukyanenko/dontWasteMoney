import 'package:dontWasteMoney/components/budget_list_item.dart';
import 'package:dontWasteMoney/components/floating_action_button.dart';
import 'package:dontWasteMoney/components/top_circular_icon.dart';
import 'package:dontWasteMoney/components/text_header.dart';
import 'package:dontWasteMoney/components/top_rounded_icon.dart';
import 'package:flutter/material.dart';

import '../../constans.dart';

class DashboardScreen extends StatelessWidget {
  static String route = "/dashboard";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingButton(
        onPressed: () {},
      ),
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
              height: size.height * 0.06,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TopRoundedIcon(
                    size: size,
                    icon: Icon(Icons.arrow_upward_outlined),
                    text: Text('Today'),
                    onTap: () {},
                    color: kPinkColor,
                  ),
                  TopRoundedIcon(
                    size: size,
                    icon: Icon(Icons.arrow_downward_outlined),
                    text: Text('Total'),
                    border: Border.all(color: kGreyColor),
                    color: kWhiteColor,
                    onTap: () {},
                  ),
                  TopCircularIcon(
                    size: size,
                    color: kGreyColor,
                    onTap: () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.06,
            ),
            Expanded(
              child: ListView(
                children: [
                  BudgetListItem(size: size)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


