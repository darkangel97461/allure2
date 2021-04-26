import 'package:flutter/material.dart';

//=========================MY OWN IMPORTS.=================
import 'package:alluredesigns/components/constants.dart';

class CasualScreen extends StatefulWidget {
  @override
  _CasualScreenState createState() => _CasualScreenState();
}

class _CasualScreenState extends State<CasualScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        iconTheme: kAppBarIconTheme,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Casual Wears",
          style: kAppBarTitleStyle,
        ),
      ),
    );
  }
}
