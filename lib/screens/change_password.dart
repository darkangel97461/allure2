import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//====================MY OWN IMPORTS==================
import 'package:alluredesigns/components/constants.dart';
import 'package:alluredesigns/screens/user_edit_profile.dart';

class ChangePasswordScreen extends StatefulWidget {
  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Change Password",
          style: kAppBarTitleStyle,
        ),
        iconTheme: kAppBarIconTheme,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
            color: Colors.white,
          ),
          child: ListView(
            children: [
              SizedBox(
                height: 20.0,
              ),
              ProfileLabel(label: "Current Password : "),
              ProfileTextField(labelHint: "Type Your Current Password..."),
              ProfileLabel(label: "New Password : "),
              ProfileTextField(labelHint: "Type Your New Password..."),
              ProfileLabel(label: "Confirm Password : "),
              ProfileTextField(labelHint: "Confirm Your New Password..."),
              ProfileLabel(label: "Enter OTP : "),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                ),
                child: Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                  child: TextField(
                    style: TextStyle(
                      height: 2.0,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: "_ _ _ _",
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 50.0,
                      ),
                      contentPadding: EdgeInsets.only(
                        top: 20.0,
                        left: 10.0,
                      ),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          color: kOurThemeColor,
          height: 70.0,
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Text(
              "SAVE",
              textAlign: TextAlign.center,
              style: TextStyle(
                letterSpacing: 1.0,
                fontSize: 30.0,
                color: Colors.white,
                fontFamily: "Raleway",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
