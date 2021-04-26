import 'package:flutter/material.dart';

//=========================MY OWN IMPORTS.=================
import 'package:alluredesigns/components/constants.dart';

class SareeScreen extends StatefulWidget {
  @override
  _SareeScreenState createState() => _SareeScreenState();
}

class _SareeScreenState extends State<SareeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        iconTheme: kAppBarIconTheme,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Sarees",
          style: kAppBarTitleStyle,
        ),
      ),
    );
  }
}
