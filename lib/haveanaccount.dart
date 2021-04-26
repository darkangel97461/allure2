import 'package:alluredesigns/screens/cart_screen.dart';
import 'package:alluredesigns/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:alluredesigns/authentication.dart';
import 'package:alluredesigns/fireflutter.dart';
import 'package:alluredesigns/main.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Logsign extends StatefulWidget {
  @override
  _LogsignState createState() => _LogsignState();
}

class _LogsignState extends State<Logsign> {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image(
            image: AssetImage('images/logsimage.jpg'),
            fit: BoxFit.cover,
            color: Colors.black54,
            colorBlendMode: BlendMode.darken,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hello',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 80.00,
                      fontFamily: 'Montserrat',
                      color: Colors.white60),
                ),
                Text(
                  'There.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 80.00,
                    fontFamily: 'Montserrat',
                    color: Colors.white60,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'WELCOME TO ALLURE DESIGNS',
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14.00,
                      letterSpacing: 3.00,
                      fontFamily: 'Reemkufi'),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailcontroller,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white70)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white70)),
                    labelText: 'Enter Your Email',
                    labelStyle: TextStyle(
                      fontSize: 20.00,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: _passwordcontroller,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white70)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white70)),
                    labelText: 'Enter Your Password',
                    labelStyle: TextStyle(
                      fontSize: 20.00,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                MaterialButton(
                  shape: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                  ),
                  height: 40.00,
                  minWidth: 200.00,
                  splashColor: Colors.white60,
                  colorBrightness: Brightness.dark,
                  onPressed: () async {
                    bool shouldNavigate = await loginuser(
                        _emailcontroller.text.trim(),
                        _passwordcontroller.text.trim());
                    if (shouldNavigate == true) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BottomNavBar()));
                    } else {
                      Fluttertoast.showToast(
                          msg:
                              'User does not exist. Create an account an try again.');
                    }
                  },
                  child: Text(
                    'Log In',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                        fontSize: 18.00,
                        letterSpacing: 1.00),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Authentication()));
                  },
                  child: Text(
                    'Dont Have an Account !',
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
