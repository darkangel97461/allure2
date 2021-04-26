import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:alluredesigns/screens/signin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Logsign());
}

class Logsign extends StatefulWidget {
  @override
  _LogsignState createState() => _LogsignState();
}

class _LogsignState extends State<Logsign> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Firebase.initializeApp();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image(
              image: AssetImage('images/logsimage.jpg'),
              fit: BoxFit.cover,
              color: Colors.black54,
              colorBlendMode: BlendMode.darken,
            ),
            Positioned(
              left: 5.00,
              top: 75.00,
              child: Text(
                'Hello',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 80.00,
                    fontFamily: 'Montserrat',
                    color: Colors.white60),
              ),
            ),
            Positioned(
              left: 5.00,
              top: 145.00,
              child: Text(
                'There',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 80.00,
                  fontFamily: 'Montserrat',
                  color: Colors.white60,
                ),
              ),
            ),
            Positioned(
              left: 250.00,
              top: 145.00,
              child: Text(
                '.',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 80.00,
                    fontFamily: 'Montserrat',
                    color: Colors.black54),
              ),
            ),
            Positioned(
              top: 259.00,
              left: 40.00,
              child: Text(
                'WELCOME TO ALLURE DESIGNS',
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14.00,
                    letterSpacing: 3.00,
                    fontFamily: 'Reemkufi'),
              ),
            ),
            Positioned(
              left: 20.00,
              top: 300.00,
              width: 325.00,
              child: TextField(
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70)),
                  labelText: 'Phone Number',
                  labelStyle: TextStyle(
                    fontSize: 20.00,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20.00,
              top: 370.00,
              width: 325.00,
              child: TextField(
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70)),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    fontSize: 20.00,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 425.00,
              left: 230.00,
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password',
                  style: TextStyle(color: Colors.white60),
                ),
              ),
            ),
            Positioned(
              top: 475.00,
              left: 80.00,
              child: MaterialButton(
                shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal),
                ),
                height: 40.00,
                minWidth: 200.00,
                splashColor: Colors.white60,
                colorBrightness: Brightness.dark,
                onPressed: () {},
                child: Text(
                  'Log In',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                      fontSize: 18.00,
                      letterSpacing: 1.00),
                ),
              ),
            ),
            Positioned(
              left: 120.00,
              bottom: 30.00,
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignIn(),
                    ),
                  );
                },
                child: Text(
                  'Create an account',
                  style: TextStyle(color: Colors.white60),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
