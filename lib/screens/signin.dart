import 'package:alluredesigns/screens/home_page.dart';
import 'package:alluredesigns/screens/otp_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(
    MaterialApp(
      home: SignIn(),
    ),
  );
}

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _phoneController = TextEditingController();
  final _codeController = TextEditingController();

  Future<bool> loginUser(String phone, BuildContext context) async {
    FirebaseAuth _auth = FirebaseAuth.instance;

    _auth.verifyPhoneNumber(
        phoneNumber: phone,
        timeout: Duration(seconds: 60),
        verificationCompleted: (AuthCredential credential) async {
          Navigator.of(context).pop();

          UserCredential result = await _auth.signInWithCredential(credential);

          var user = result.user;

          if (user != null) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomeScreen(
                          user: user,
                        )));
          } else {
            print("Error");
          }

          //This callback would gets called when verification is done auto maticlly
        },
        verificationFailed: (FirebaseAuthException exception) {
          print(exception);
        },
        codeSent: (String verificationId, [int forceResendingToken]) {
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) {
                return AlertDialog(
                  title: Text("Give the code?"),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      TextField(
                        controller: _codeController,
                      ),
                    ],
                  ),
                  actions: <Widget>[
                    FlatButton(
                      child: Text("Confirm"),
                      textColor: Colors.white,
                      color: Colors.blue,
                      onPressed: () async {
                        final code = _codeController.text.trim();
                        AuthCredential credential =
                            // ignore: deprecated_member_use
                            PhoneAuthProvider.getCredential(
                                verificationId: verificationId, smsCode: code);

                        UserCredential result =
                            await _auth.signInWithCredential(credential);

                        FirebaseUser user = result.user;

                        if (user != null) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen(
                                        user: user,
                                      )));
                        } else {
                          print("Error");
                        }
                      },
                    )
                  ],
                );
              });
        },
        codeAutoRetrievalTimeout: null);
  }

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
        backgroundColor: Colors.black87,
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
              top: 20.00,
              left: 120.00,
              child: Text(
                'SIGN UP',
                style: TextStyle(
                    color: Colors.white60,
                    letterSpacing: 3.0,
                    fontSize: 25.00,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Raleway'),
              ),
            ),
            Positioned(
              top: 200.00,
              width: 350.00,
              child: TextField(
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Enter Your Username',
                  labelStyle: TextStyle(
                    color: Colors.white70,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white60)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white60)),
                ),
              ),
            ),
            Positioned(
              top: 300.00,
              width: 350.00,
              child: TextField(
                controller: _phoneController,
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter Your Mobile Number',
                  labelStyle: TextStyle(
                    color: Colors.white70,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white60)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white60)),
                ),
              ),
            ),
            Positioned(
              top: 475.00,
              left: 80.00,
              child: MaterialButton(
                shape: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal)),
                height: 40.00,
                minWidth: 200.00,
                splashColor: Colors.teal,
                color: Colors.transparent,
                colorBrightness: Brightness.dark,
                onPressed: () {
                  final phone = _phoneController.text.trim();
                  loginUser(phone, context);
                },
                child: Text(
                  'Create Account',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                      fontSize: 18.00,
                      letterSpacing: 1.00),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
