import 'package:flutter/material.dart';

//=========================MY OWN IMPORTS.=================
import 'package:alluredesigns/components/constants.dart';

class ChuridarScreen extends StatefulWidget {
  @override
  _ChuridarScreenState createState() => _ChuridarScreenState();
}

class _ChuridarScreenState extends State<ChuridarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        iconTheme: kAppBarIconTheme,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Churidars",
          style: kAppBarTitleStyle,
        ),
      ),
    );
  }
}
