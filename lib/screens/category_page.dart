import 'package:flutter/material.dart';

//===================MY OWN IMPORTS========================
import 'package:alluredesigns/components/constants.dart';
import 'package:alluredesigns/components/categories.dart';

void main() {
  runApp(
    MaterialApp(
      home: CategoryScreen(),
    ),
  );
}

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        elevation: 1.5,
        iconTheme: kAppBarIconTheme,
        centerTitle: true,
        backgroundColor: Color(0xFFFFFFFF),
        title: Text(
          "CATEGORIES",
          style: kAppBarTitleStyle,
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              style: TextStyle(
                height: 1.0,
                color: Colors.black,
              ),
              decoration: kSearchInputDecoration,
              onChanged: (value) {
                print(value);
              },
            ),
          ),
          Categories(),
        ],
      ),
    );
  }
}
