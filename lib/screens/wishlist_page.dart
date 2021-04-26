import 'package:flutter/material.dart';

//===================MY OWN IMPORTS========================
import 'package:alluredesigns/components/constants.dart';

void main() {
  runApp(
    MaterialApp(
      home: WishListScreen(),
    ),
  );
}

class WishListScreen extends StatefulWidget {
  @override
  _WishListScreenState createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        elevation: 0.5,
        iconTheme: kAppBarIconTheme,
        centerTitle: true,
        backgroundColor: Color(0xFFFFFFFF),
        title: Text(
          "WISHLIST",
          style: kAppBarTitleStyle,
        ),
      ),
      body: Center(
        child: Text(
          "Your Wishlist is Empty",
          style: TextStyle(
            color: Colors.grey.shade700,
            fontFamily: 'Raleway',
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
