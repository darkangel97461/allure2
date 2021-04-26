import 'package:flutter/material.dart';

//=====================MY OWN IMPORTS===================
import 'package:alluredesigns/components/constants.dart';

class StitchedScreen extends StatefulWidget {
  @override
  _StitchedScreenState createState() => _StitchedScreenState();
}

class _StitchedScreenState extends State<StitchedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(""),
        iconTheme: kAppBarIconTheme,
      ),
    );
  }
}
