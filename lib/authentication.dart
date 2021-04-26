import 'package:alluredesigns/haveanaccount.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:alluredesigns/authentication.dart';
import 'package:alluredesigns/main.dart';
//=================MY OWN IMPORTS=====================
import 'package:alluredesigns/screens/home_page.dart';
import 'package:alluredesigns/fireflutter.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Authentication extends StatefulWidget {
  Authentication({Key key}) : super(key: key);
  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Firebase.initializeApp();
  }

  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
              top: size.height * .01,
              left: size.width * .37,
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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: _emailcontroller,
                    style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Enter Your Email',
                      labelStyle: TextStyle(
                        color: Colors.white70,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white60)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white60)),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                    obscureText: true,
                    controller: _passwordcontroller,
                    style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'Enter Your Password',
                      labelStyle: TextStyle(
                        color: Colors.white70,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white60)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white60)),
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  MaterialButton(
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal)),
                    height: 40.00,
                    minWidth: 200.00,
                    splashColor: Colors.teal,
                    color: Colors.transparent,
                    colorBrightness: Brightness.dark,
                    onPressed: () async {
                      FirebaseAuth _auth = FirebaseAuth.instance;
                      bool shouldNavigate = await registeruser(
                          _emailcontroller.text.trim(),
                          _passwordcontroller.text.trim());
                      if (shouldNavigate == true) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomNavBar(),
                          ),
                        );
                      } else {
                        Fluttertoast.showToast(
                            msg: 'Account already exist. Try to login.');
                      }
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
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Logsign()));
                    },
                    child: Text(
                      'Have an account? Log In',
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Textfield extends StatelessWidget {
  Textfield({
    @required this.controller,
    // ignore: non_constant_identifier_names
    @required this.label_text,
    @required this.hintText,
    // ignore: non_constant_identifier_names
    @required this.obscure_text,
  });
  // ignore: non_constant_identifier_names
  final bool obscure_text;
  final String hintText;
  // ignore: non_constant_identifier_names
  final String label_text;
  final controller;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 40.00,
      padding: EdgeInsets.only(
        left: size.width * .05,
        right: size.width * .05,
      ),
      child: TextField(
        controller: controller,
        obscureText: obscure_text,
        decoration: InputDecoration(
          labelStyle: TextStyle(color: Colors.white, fontSize: 15.00),
          hintText: hintText,
          labelText: label_text,
          hintStyle: TextStyle(color: Colors.grey, fontSize: 15.00),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  Button({
    @required this.press,
    @required this.text,
    @required this.color,
    @required this.textColor,
    this.splashcolor,
  });
  final Function press;
  final String text;
  final Color color;
  final Color textColor;
  final Color splashcolor;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.00)),
      splashColor: splashcolor,
      onPressed: press,
      color: color,
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: textColor,
          fontSize: 17.00,
        ),
      ),
    );
  }
}
