import 'package:flutter/material.dart';

//=========================MY OWN IMPORTS.=================
import 'package:alluredesigns/components/constants.dart';

class KurtaScreen extends StatefulWidget {
  @override
  _KurtaScreenState createState() => _KurtaScreenState();
}

class _KurtaScreenState extends State<KurtaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        iconTheme: kAppBarIconTheme,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Kurtas",
          style: kAppBarTitleStyle,
        ),
      ),
    );
  }
}
