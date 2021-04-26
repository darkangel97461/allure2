import 'package:flutter/material.dart';

//=========================MY OWN IMPORTS.=================
import 'package:alluredesigns/components/constants.dart';

class BridalScreen extends StatefulWidget {
  @override
  _BridalScreenState createState() => _BridalScreenState();
}

class _BridalScreenState extends State<BridalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        iconTheme: kAppBarIconTheme,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Bridal Wears",
          style: kAppBarTitleStyle,
        ),
      ),
    );
  }
}
