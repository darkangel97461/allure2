import 'package:flutter/material.dart';

//=========================MY OWN IMPORTS.=================
import 'package:alluredesigns/components/constants.dart';

class AnarkaliScreen extends StatefulWidget {
  @override
  _AnarkaliScreenState createState() => _AnarkaliScreenState();
}

class _AnarkaliScreenState extends State<AnarkaliScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        iconTheme: kAppBarIconTheme,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Anarkalis",
          style: kAppBarTitleStyle,
        ),
      ),
    );
  }
}
