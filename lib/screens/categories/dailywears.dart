import 'package:flutter/material.dart';

//=========================MY OWN IMPORTS.=================
import 'package:alluredesigns/components/constants.dart';

class DailyScreen extends StatefulWidget {
  @override
  _DailyScreenState createState() => _DailyScreenState();
}

class _DailyScreenState extends State<DailyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        iconTheme: kAppBarIconTheme,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Daily Wears",
          style: kAppBarTitleStyle,
        ),
      ),
    );
  }
}
