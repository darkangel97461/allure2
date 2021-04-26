import 'package:flutter/material.dart';

//=========================MY OWN IMPORTS.=================
import 'package:alluredesigns/components/constants.dart';

class KidsScreen extends StatefulWidget {
  @override
  _KidsScreenState createState() => _KidsScreenState();
}

class _KidsScreenState extends State<KidsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        iconTheme: kAppBarIconTheme,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Kids",
          style: kAppBarTitleStyle,
        ),
      ),
    );
  }
}
