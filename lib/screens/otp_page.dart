import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(Otp());
}

class Otp extends StatefulWidget {
  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black12,
          elevation: 0.00,
          title: Text(
            'Verification',
            style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.black,
                fontFamily: 'Montserrat',
                fontSize: 18.00,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image(
              image: AssetImage(
                'images/signin.jpg',
              ),
              fit: BoxFit.cover,
              color: Colors.black45,
              colorBlendMode: BlendMode.darken,
            ),
            Positioned(
              left: 10.00,
              top: 250.00,
              width: 370.00,
              child: TextField(
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 18.00),
                decoration: InputDecoration(
                  labelText: 'Enter OTP',
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white60),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white60),
                  ),
                ),
              ),
            ),
            Positioned(
              height: 50.00,
              left: 110.00,
              top: 350.00,
              width: 150,
              child: MaterialButton(
                color: Colors.black12,
                elevation: 30.00,
                splashColor: Colors.teal,
                shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal),
                ),
                child: Text(
                  'VERIFY',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
