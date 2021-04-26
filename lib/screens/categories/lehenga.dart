import 'package:flutter/material.dart';

//=========================MY OWN IMPORTS.=================
import 'package:alluredesigns/components/constants.dart';

class LehengaScreen extends StatefulWidget {
  @override
  _LehengaScreenState createState() => _LehengaScreenState();
}

class _LehengaScreenState extends State<LehengaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        iconTheme: kAppBarIconTheme,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Lehengas",
          style: kAppBarTitleStyle,
        ),
      ),
    );
  }
}
